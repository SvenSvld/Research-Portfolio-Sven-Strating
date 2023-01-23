/* 
Purpose: 1. creat a new music taste variable "mainstream music" using the list from  Akira Soto and Anton Shveygert
		 2. combine music_taste variable with the original dataset 
*/

cd "D:\2021 Autumn Utrecht\SASR08 research praticum 2\SaSR8 2021-2022\data\knecht"


//=========================================
// Step 1: create a music taste dataset 
//==========================================

// import the data
import excel using "Knecht music coding.xlsx", firstrow clear
encode genre, gen(genre_n)

codebook genre_n, tab(60)

gen genre_n1 = .


						
replace genre_n1= 10 if genre_n == 8 | genre_n == 17 | genre_n == 31 | ///
                        genre_n == 34 | genre_n == 41 | genre_n == 58

replace genre_n1= 9 if genre_n == 44 | genre_n == 50 | genre_n == 51 | ///
                        genre_n == 52 | genre_n == 9 

replace genre_n1= 8 if genre_n == 13 | genre_n == 14 | genre_n == 16 | ///
                       genre_n == 18 | genre_n == 19 | genre_n == 20 | ///
                       genre_n == 21 | genre_n == 22 | genre_n == 29 | ///
					   genre_n == 30 | genre_n == 32 | genre_n == 56 | ///
					   genre_n == 57

replace genre_n1= 7 if genre_n == 59

					   
replace genre_n1= 6 if genre_n == 28 | genre_n == 45 | genre_n == 46 | genre_n == 47 

replace genre_n1= 5 if genre_n == 11 | genre_n == 12 | genre_n == 23 | ///
                        genre_n == 24 | genre_n == 39
						
replace genre_n1= 4 if genre_n == 7 | genre_n == 10
						
replace genre_n1= 3 if genre_n == 48 | genre_n == 49

replace genre_n1= 2 if genre_n == 4 | genre_n == 55

replace genre_n1= 1 if genre_n == 5 | genre_n == 6 | genre_n == 15 | ///
                       genre_n == 25 | genre_n == 26 | genre_n == 27 | ///
                       genre_n == 33 | genre_n == 35 | genre_n == 36 | ///
					   genre_n == 53 | genre_n == 54 | genre_n == 37 | ///
					   genre_n == 40

codebook genre_n1
label define g 10 "pop" 9 "rock" 8 "dance/electronic/house" 7 "soundtracks" ///  
				6 "hiphop/rap/trap" 5 "singer/songwrite" 4 "classical/opera" ///
				3 "r&b" 2 "soul/blues" 1 "others"
label values genre_n1 g

codebook genre_n1,tab(10)
rename music_id music1_ego
rename genre_n1 genre_ego
drop genre genre_n				 
save music_taste, replace

//=========================================
// Step 2: combine music_taste with origin dataset
//==========================================

use knecht_edyad, clear
merge m:1 music1_ego using music_taste
keep if _merge==1 | _merge==3
drop _merge
sort wave schoolnr namenr_ego
save knecht_edyad_music, replace

use music_taste, replace
rename music1_ego music1_alter
rename genre_ego genre_alter
save music_taste, replace

use knecht_edyad_music, clear
merge m:1 music1_alter using music_taste
keep if _merge==1 | _merge==3
drop _merge
sort wave schoolnr namenr_ego
save knecht_edyad_music, replace
