/*
purpose: do the Multilevel model 
Parts:
	1. the intercept only model
	2. add the random slope of wave at pupils level
	3. add the random slope of wave at pupils classes level
	4. plot the margins
*/

use multilevel_dataset.dta, clear
cls

// 1. the intercept only model: 
// allow the constant coefficient varies across pupils and classes

mixed genre_ego wave || schoolnr1: , stddeviations || namenr_ego: 
estimates store randint

//2. add the random slope of wave at pupils level

mixed genre_ego wave || schoolnr1: || namenr_ego:wave, ///
                        cov(unstr)
estimates store randslope

// lrtest between randint and randslope: p<0.001 reject the null hypothesis
// the random-slope model is more worthwhile
lrtest randint randslope 

// 3. add the random slope of wave at pupils classes level
			
mixed genre_ego wave || schoolnr1:wave, var cov(unstr) || namenr_ego:wave, ///
                        cov(unstr)
estimates store randslope_2

// lrtest between randslope and randslope_2: p=0.034 reject the null hypothesis
// the random-slope model at two levels is more worthwhile
// this is our final model
lrtest randslope randslope_2	

			
// 4. plot the margins
margins, at(wave=(1 2 3 4))
marginsplot, title("Self-reported music taste by individual pupils over time", ///
             size(medium)) xtitle("Wave", size(small)) ///
			 ytitle("Linear prediction of self-reported music taste", size(small)) ///
		     xlabel(1 "Month 1" 2 "Month 3" 3 "Month 6" 4 "Month 9") ///
		     graphregion(fcolor(white)) ///
		     name(graph_Multilevel_Music, replace)
				

