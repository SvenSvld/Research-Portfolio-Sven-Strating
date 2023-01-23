* Encoding: UTF-8.
GET DATA
  /TYPE=XLSX
  /FILE='C:\Users\svens\OneDrive\Documenten\3_Bachelor_Sociology and Social Research\BLOK '+
    '1+2\Learning From Big Data\Module 1\Final paper (revision)\Module_1_Large_Scale.xlsx'
  /SHEET=name 'Data ascending'
  /CELLRANGE=FULL
  /READNAMES=ON
  /DATATYPEMIN PERCENTAGE=95.0
  /HIDDEN IGNORE=YES.
EXECUTE.
DATASET NAME Data_Analysis(1) WINDOW=FRONT.

*Try to answer the following research question (RQ):
To what extent does the content and sentiment of both left-wing and right-wing politicians change as elections get close?*

*First, I will divide the dates into three 'blocks': 
(1) Far from elections, (2) Neither far or close from elections, (3) Close to elections

*Add variable: Twitter_ID_Numeric by using alogrithm counting in MS Excel (1:1001).
RENAME VARIABLES
VAR00001 = "Twitter_ID_Numeric".
VARIABLE LEVEL
Twitter_ID_Numeric (SCALE)
.
fre Twitter_ID_Numeric

RECODE Twitter_ID_Numeric (1 thru 333=2) (334 thru 667=1) (668 thru 1001=0) INTO Date_Categorical.
EXECUTE.
VALUE LABELS Date_Categorical
2 "Close to elections"
1 "Neither far or close from elections"
0 "Far from elections"
.
fre Date_Categorical

*Descriptives sentiment
* Chart Builder.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=Date_Categorical MEAN(Pos_sent)[name="MEAN_Pos_sent"] 
    Twitter_ID MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: Date_Categorical=col(source(s), name("Date_Categorical"), unit.category())
  DATA: MEAN_Pos_sent=col(source(s), name("MEAN_Pos_sent"))
  DATA: Twitter_ID=col(source(s), name("Twitter_ID"), unit.category())
  GUIDE: axis(dim(1), label("Date_Categorical"))
  GUIDE: axis(dim(2), label("Mean Pos_sent"))
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("Twitter_ID"))
  GUIDE: text.title(label("Multiple Line Mean of Pos_sent by Date_Categorical by Twitter_ID"))
  SCALE: cat(dim(1), include(".00", "1.00", "2.00"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: line(position(Date_Categorical*MEAN_Pos_sent), color.interior(Twitter_ID), 
    missing.wings())
END GPL.
* Chart Builder.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=Date_Categorical MEAN(Neg_sent)[name="MEAN_Neg_sent"] 
    Twitter_ID MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: Date_Categorical=col(source(s), name("Date_Categorical"), unit.category())
  DATA: MEAN_Neg_sent=col(source(s), name("MEAN_Neg_sent"))
  DATA: Twitter_ID=col(source(s), name("Twitter_ID"), unit.category())
  GUIDE: axis(dim(1), label("Date_Categorical"))
  GUIDE: axis(dim(2), label("Mean Neg_sent"))
  GUIDE: legend(aesthetic(aesthetic.color.interior), label("Twitter_ID"))
  GUIDE: text.title(label("Multiple Line Mean of Neg_sent by Date_Categorical by Twitter_ID"))
  SCALE: cat(dim(1), include(".00", "1.00", "2.00"))
  SCALE: linear(dim(2), include(0))
  ELEMENT: line(position(Date_Categorical*MEAN_Neg_sent), color.interior(Twitter_ID), 
    missing.wings())
END GPL.

*Calculate hMAP by using MS Excel
=ALS(GROOTSTE($A2:$C2;1)=A2;1;"")
*Export table to SPSS.

RENAME VARIABLES
VAR00002 = "hMAP_Agreeableness"
VAR00003 = "hMAP_Integrity"
VAR00004 = "hMAP_Policy"
.
VARIABLE LEVEL
hMAP_Agreeableness (SCALE)
hMAP_Integrity (SCALE)
hMAP_Policy (SCALE)
.

alter type 
hMAP_Agreeableness (f1.0) 
hMAP_Integrity (f1.0)
.

RECODE hMAP_Agreeableness (1=1).
EXECUTE.
RECODE hMAP_Integrity (1=1).
EXECUTE.

*Check errors in classifier.
COMPUTE Error_Check=SUM(hMAP_Agreeableness,hMAP_Integrity,hMAP_Policy).
EXECUTE.
GGRAPH
  /GRAPHDATASET NAME="graphdataset" VARIABLES=Error_Check[LEVEL=SCALE] MISSING=LISTWISE 
    REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: Error_Check=col(source(s), name("Error_Check"))
  GUIDE: axis(dim(1), label("Error_Check"))
  GUIDE: axis(dim(2), label("Frequency"))
  GUIDE: text.title(label("Simple Bar of Error_Check"))
  ELEMENT: interval(position(summary.count(bin.rect(Error_Check))), shape.interior(shape.square))
END GPL.

*filter out non-classifiable tweets (Error_Check > 1).
USE ALL.
COMPUTE filter_$=(Error_Check <= 1).
VARIABLE LABELS filter_$ 'Error_Check <= 1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.
fre filter_$

*Export this file to MS Excel and start counting dimensions.
SAVE OUTFILE='C:\Users\svens\OneDrive\Documenten\3_Bachelor_Sociology and Social Research\BLOK 1+2\Learning From Big Data\Module 1\Final paper (revision)\pre_processing_data_set.sav'
  /COMPRESSED.
SAVE TRANSLATE OUTFILE='C:\Users\svens\OneDrive\Documenten\3_Bachelor_Sociology and Social Research\BLOK 1+2\Learning From Big Data\Module 1\Final paper (revision)\pre_processing_data_set.xlsx'
  /TYPE=XLS
  /VERSION=12
  /MAP
  /FIELDNAMES VALUE=NAMES
  /CELLS=VALUES
  /REPLACE.
