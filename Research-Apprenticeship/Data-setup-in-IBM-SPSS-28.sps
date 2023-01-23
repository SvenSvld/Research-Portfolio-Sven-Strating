* Encoding: UTF-8.
*===========================SET-UP=======================.

*1) GET DATA.
GET DATA
  /TYPE=XLSX
  /FILE='U:\My Documents\Forsikningspraktik\final dataset\individual-level\final dataset '+
    '(updated including syntaxis)\final_dataset_v3.xlsx'
  /SHEET=name 'Sheet1'
  /CELLRANGE=FULL
  /READNAMES=ON
  /DATATYPEMIN PERCENTAGE=95.0
  /HIDDEN IGNORE=YES.
EXECUTE.


*2) CONSTRUCT DEPENDENT VARIABLE
    "support for a right-wing populist party or not".
DATASET NAME DataSet1 WINDOW=FRONT.
DELETE VARIABLES maxvalue Party_distance_sd_A Party_distance_v_A
Party_distance_fi_A Party_distance_s_A Party_distance_mp_A Party_distance_c_A	
Party_distance_l_A Party_distance_kd_A Party_distance_m_A.
DATASET ACTIVATE DataSet1.
RECODE sd_largest_2yes_1no (2=1) (1=0).
EXECUTE.

USE ALL.
COMPUTE filter_$=((party_distance_fi > 0.8 OR party_distance_mp > 0.8 OR party_distance_s > 0.8 OR 
    party_distance_sd > 0.8 OR party_distance_v > 0.8 OR party_distance_c > 0.8 OR party_distance_m > 
    0.8 OR party_distance_kd > 0.8 OR party_distance_l > 0.8) AND (partydecided2 > 2)).
VARIABLE LABELS filter_$ '(party_distance_fi > 0.8 OR party_distance_mp > 0.8 OR '+
    'party_distance_s > 0.8 OR party_distance_sd > 0.8 OR party_distance_v > 0.8 OR '+
    'party_distance_c > 0.8 OR party_distance_m > 0.8 OR party_distance_kd > 0.8 OR '+
    'party_distance_l > 0.8) AND ... (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.
*condition_1 = party_distance >.8 AND > partydecided > 2.
RENAME VARIABLES filter_$ = condition_1.
FILTER OFF.
    
*condition_1 needs to be 1
    IF condition_1=1 AND sd_largest2yes_1no = 1 THEN Vote_RWPP=2  
    IF condition_1=1 AND sd_largest2yes_1no = 0 THEN Vote_RWPP=1
    .
CROSSTABS
  /TABLES=partydecided2 BY condition_1
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

COMPUTE Vote_RWPP = 0.
EXECUTE.
IF (sd_largest_2yes_1no=1 AND condition_1=1) Vote_RWPP = 2.
EXECUTE.    
IF (sd_largest_2yes_1no=0 AND condition_1=1) Vote_RWPP = 1.
EXECUTE.
CROSSTABS
  /TABLES=Vote_RWPP BY condition_1
  /FORMAT=AVALUE TABLES
  /CELLS=COUNT
  /COUNT ROUND CELL.

*Drop cased with Vote_RWPP=0.00.
FILTER OFF.
USE ALL.
SELECT IF (Vote_RWPP = 1 OR Vote_RWPP = 2).
EXECUTE.
FILTER OFF.

*Recode Vote_RWPP.
RECODE Vote_RWPP (2=1) (1=0).
EXECUTE.

*2) CONSTRUCT LATENT VARIABLE 
    "one's importance of environmental issues".
IF  ((NOT SYSMIS(Sign_16)) AND (NOT SYSMIS(Sign_17)) AND (NOT SYSMIS(Sign_27))  ) 
    Importance_Environmental=MEAN(Sign_16,Sign_17,Sign_27).
EXECUTE.
*====================================================.
