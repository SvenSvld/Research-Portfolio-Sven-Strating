// purpose: descriptive analysis

cd "D:\2021 Autumn Utrecht\SASR08 research praticum 2\SaSR8 2021-2022\data\knecht"

use knecht_edyad_music_1, clear

// ALL sample
bys wave: sum genre_ego
bys wave: sum friend_n_ego
sum sex_ego
sum ego if !missing(genre_ego, friend_n_ego, sex_ego) // N = 3165

// BY GENDER
bys wave sex_ego: sum genre_ego
bys wave sex_ego: sum friend_n_ego
bys sex_ego: sum ego if !missing(genre_ego, friend_n_ego, sex_ego) // N = 3165

sort schoolnr namenr_ego namenr_alter (wave)
help egen
egen ego_female = group(schoolnr namenr_ego) if sex_ego==1
sum ego_female // The number of female students = 1536
egen ego_male = group(schoolnr namenr_ego) if sex_ego==2
sum ego_male // The number of male students = 1629
