/* 
purpose: do the dynamic model
Parts: 1. start to use sasr82 and lquality command
       2. dynamic model - ALL SAMPLE
	   3. dynamic model - ALL SAMPLE - add the control variable
	   4. dynamic model - BY GENDER
*/
cd "D:\2021 Autumn Utrecht\SASR08 research praticum 2\SaSR8 2021-2022\data\knecht"

use knecht_edyad_music, clear

cd "D:\2021 Autumn Utrecht\SASR08 research praticum 2\SaSR8 2021-2022\sna"

// 1. start to use sasr82 and lquality command
sasr82 setup schoolnr wave, actor(namenr) suffix1(_ego) suffix2(_alter)
help sasr82
egen node_tag = group(schoolnr wave namenr_ego)
egen ego = group(schoolnr namenr_ego)
egen alter = group(schoolnr namenr_alter)

bys schoolnr namenr_ego namenr_alter (wave): ///
	gen Nexty = genre_ego[_n+1]
	
sort schoolnr namenr_ego namenr_alter (wave)

sasr82 gen Wy = lquality(friend genre) 

// 2. dynamic model
mixed Nexty genre_ego Wy_ego sex_ego wave if node_tag || ego:

// add the random effects of Wy_ego, but it did not work in the Stata
mixed Nexty genre_ego Wy_ego sex_ego wave if node_tag || ego: genre_ego, var cov(unstr)

// add the random intercept of class level. but it did not work in the Stata
mixed Nexty genre_ego Wy_ego sex_ego wave if node_tag || ego: || schoolnr:


//3. add the control variable: the number of ego's friends (outdegree ties)   
help sasr82
sasr82 gen friend_n = outdegree(friend)
mixed Nexty genre_ego Wy_ego wave sex_ego friend_n_ego if node_tag || ego:

// 4. by gender
bys sex_ego: mixed Nexty genre_ego Wy_ego wave friend_n_ego if node_tag || ego:

save knecht_edyad_music_1
