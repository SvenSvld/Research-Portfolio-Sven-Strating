* Encoding: UTF-8.
*========================README=====================================================.
**Satistical Modelling without confounders.
*====================================================================================.

*Filter= SYSMIS should not apply for: 
    *DV and IV's.
DATASET ACTIVATE DataSet1.
USE ALL.
COMPUTE filter_$=(( (NOT SYSMIS(Vote_RWPP)) AND (NOT SYSMIS(age_new)) AND (NOT SYSMIS(gender1)) AND 
     (NOT SYSMIS(Importance_Environmental)) )).
VARIABLE LABELS filter_$ '( (NOT SYSMIS(Vote_RWPP)) AND (NOT SYSMIS(age_new)) AND (NOT '+
    'SYSMIS(gender1)) AND  (NOT SYSMIS(Importance_Environmental)) ) (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

*-------------------------------------------------------------------------Hypothesis 1----------------------------------------------------------.
*MODEL.
LOGISTIC REGRESSION VARIABLES Vote_RWPP
  /METHOD=ENTER Importance_Environmental
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20) CUT(.5).

*-------------------------------------------------------------------------Hypothesis 4----------------------------------------------------------.
* MODEL.
**cross-variable (gender*environment).
DATASET ACTIVATE DataSet1.
COMPUTE gender_environment=gender1*Importance_Environmental.
EXECUTE.

LOGISTIC REGRESSION VARIABLES Vote_RWPP
  /METHOD=ENTER Importance_Environmental gender1 gender_environment
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20) CUT(.5).

*-------------------------------------------------------------------------Hypothesis 5----------------------------------------------------------.
**cross-variable (age*environment).
DATASET ACTIVATE DataSet1.
COMPUTE age_environment=age_new*Importance_Environmental.
EXECUTE.
COMPUTE gender_age_new=gender1*age_new.
EXECUTE.
COMPUTE threeway=Importance_Environmental*gender1*age_new.
EXECUTE.
LOGISTIC REGRESSION VARIABLES Vote_RWPP
  /METHOD=ENTER Importance_Environmental gender1 age_new gender_environment age_environment 
    gender_age_new threeway
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20) CUT(.5).

*OR*.
USE ALL.
COMPUTE filter_$=(gender1=1).
VARIABLE LABELS filter_$ 'gender1=1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.
LOGISTIC REGRESSION VARIABLES Vote_RWPP
  /METHOD=ENTER Importance_Environmental age_new age_environment 
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20) CUT(.5).
FILTER OFF.

*-------------------------------------------------------------------Mediation Model-------------------------------------------------------------.
**PART 1.
LOGISTIC REGRESSION VARIABLES Vote_RWPP
  /METHOD=ENTER Importance_Environmental gender1 age_new 
  /CRITERIA=PIN(.05) POUT(.10) ITERATE(20) CUT(.5).
*Standarddeviation.
DESCRIPTIVES VARIABLES=Importance_Environmental gender1 age_new Vote_RWPP
  /STATISTICS=MEAN STDDEV MIN MAX.

*PART 2.
REGRESSION
  /MISSING LISTWISE
  /STATISTICS COEFF OUTS R ANOVA
  /CRITERIA=PIN(.05) POUT(.10)
  /NOORIGIN 
  /DEPENDENT Importance_Environmental
  /METHOD=ENTER gender1 age_new.
