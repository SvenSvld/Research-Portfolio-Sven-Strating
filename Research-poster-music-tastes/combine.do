/*
Title: 1. combine.do
Purpose: combine all waves of datasets using Jeroen's code
*/

// ═════════════════════════════════════════════════════════════════════════ */

   version 15

   cls             // clears backscroll display buffer
   clear all       // "start from scratch"
   set more off    // suppresses -more- prompts
   set rmsg on     // report the duration of commands

   // !!USER adjust the next directory
   // jw
   cd "D:\2021 Autumn Utrecht\SASR08 research praticum 2\SaSR8 2021-2022\data\knecht"
   

   !erase _*.dta   // cleanup: remove datafiles that start with an underscore

// ═════════════════════════════════════════════════════════════════════════ //
// [1]  clean up pupil data
// ═════════════════════════════════════════════════════════════════════════ //

// [1a] rename variables in PupilsWave? for consistency across waves
//      files created: _pV.dta, _pW.dta, _pX.dta, _pY.dta

   // ────────────────────────────────────────────────────────────────────── //
   // cleanup WaveV=1: N=2996 -> _pV.dta
   // ────────────────────────────────────────────────────────────────────── //

   use PupilsWaveV, clear
   gen byte wave = 1

   replace schoolnr = trim(lower(schoolnr))

   rename pracsup*  pracs*
   rename pracsu*   pracs*
   rename *a        *
   rename hobby#*   hobby#

   save _pV, replace

   // ────────────────────────────────────────────────────────────────────── //
   // cleanup WaveW=2: N=3108/2862 -> _pW.dta
   // ────────────────────────────────────────────────────────────────────── //

   use PupilsWaveW, clear
   gen byte wave = 2

   replace schoolnr = trim(lower(schoolnr))
   replace schoolnr = "0"+schoolnr if strlen(schoolnr)==2

   // drop 247 all-missing obs
   egen nvalid = rownonmiss(_all), strok
   drop if nvalid<=1 | missing(schoolnr)
   drop nvalid

   rename emosu*    emosup*
   rename frien*    friend*
   rename leasu*    leasur*
   rename samem*    samemu*
   rename samec*    samecl*
   rename notle*    notlen*
   rename disli*    dislik*
   rename perso*    person*
   rename opini*    opinio*
   rename esat*     esatt*
   rename esst*     esste*
   rename opsmok*   opsmoke*
   rename issmok*   issmoke*
   rename isbrea*   isbreak*
   rename isstea*   issteal*
   rename isalco*   isalcoh*
   rename igfi5b    bigfi5b   // typo in original dataset
   rename bigfi*    bigfiv*
   rename hobb#*    hobby#

   rename *b        *

   rename opalco    opalcoh

   rename (opatte   opgrade  ophome   opsamec  optalkm          ) ///
          (opattent opgrades ophomew  opsamecl optalkmu         )

   rename (oppatte  oppbest  oppsmok  oppstea  oppfigh          ) ///
          (oppaatte oppabest oppasmok oppaste  oppafigh         )

   rename (opmatte  opmbest  opmsmok  opmstea  opmfigh          ) ///
          (opmeatte opmebest opmesmok opmeste  opmefigh         )

   rename (actstea  actbrea  actfigh  actsmea  actalco  actsmok ) ///
          (actsteal actbreak actfight actsmear actalcoh actsmoke)

   rename (actatte  acthome  actimpc  actclot  actimpm  actspor ) ///
          (actatten acthomew actimpcl actcloth actimpmu actsport)

   rename (rpatteg  rpatteb  rpnattg  rpnattb                   ) ///
          (rpaatteg rpaatteb rpanattg rpanattb                  )

   rename (rmatteg  rmatteb  rmnattg  rmnattb                   ) ///
          (rmeatteg rmeatteb rmenattg rmenattb                  )

   save _pW, replace

   // ────────────────────────────────────────────────────────────────────── //
   // cleanup WaveX=3: N=2913 -> _pX.dta
   // ────────────────────────────────────────────────────────────────────── //

   use PupilsWaveX, clear
   gen byte wave = 3

   replace schoolnr = trim(lower(schoolnr))

   rename emosu*    emosup*
   rename frien*    friend*
   rename leasu*    leasur*
   rename samem*    samemu*
   rename samec*    samecl*
   rename notle*    notlen*
   rename disli*    dislik*
   rename perso*    person*
   rename opini*    opinio*
   rename esat*     esatt*
   rename esst*     esste*
   rename opsmok*   opsmoke*
   rename issmok*   issmoke*
   rename isbrea*   isbreak*
   rename isstea*   issteal*
   rename isalco*   isalcoh*
   rename bigfi*    bigfiv*
   rename hobb#*    hobby#

   rename *c        *

   rename opalco    opalcoh

   rename (opatte   opgrade  ophome   opsamec  optalkm          ) ///
          (opattent opgrades ophomew  opsamecl optalkmu         )

   rename (oppatte  oppbest  oppsmok  oppstea  oppfigh          ) ///
          (oppaatte oppabest oppasmok oppaste  oppafigh         )

   rename (opmatte  opmbest  opmsmok  opmstea  opmfigh          ) ///
          (opmeatte opmebest opmesmok opmeste  opmefigh         )

   rename (actstea  actbrea  actfigh  actsmea  actalco  actsmok ) ///
          (actsteal actbreak actfight actsmear actalcoh actsmoke)

   rename (actatte  acthome  actimpc  actclot  actimpm  actspor ) ///
          (actatten acthomew actimpcl actcloth actimpmu actsport)

   rename (rpatteg  rpatteb  rpnattg  rpnattb                   ) ///
          (rpaatteg rpaatteb rpanattg rpanattb                  )

   rename (rmatteg  rmatteb  rmnattg  rmnattb                   ) ///
          (rmeatteg rmeatteb rmenattg rmenattb                  )

   save _pX, replace

   // ────────────────────────────────────────────────────────────────────── //
   // cleanup WaveY=4: N=2932 -> _pY.dta
   // ────────────────────────────────────────────────────────────────────── //

   use PupilsWaveY, clear
   gen byte wave = 4

   replace schoolnr = trim(lower(schoolnr))

   rename emosu*    emosup*
   rename frien*    friend*
   rename leasu*    leasur*
   rename samem*    samemu*
   rename samec*    samecl*
   rename notle*    notlen*
   rename disli*    dislik*
   rename perso*    person*
   rename opini*    opinio*
   rename esat*     esatt*
   rename esst*     esste*
   rename opsmok*   opsmoke*
   rename issmok*   issmoke*
   rename isbrea*   isbreak*
   rename isstea*   issteal*
   rename isalco*   isalcoh*
   rename bigfi*    bigfiv*
   rename hobb#*    hobby#

   rename *d        *

   rename opalco    opalcoh

   rename (opatte   opgrade  ophome   opsamec  optalkm          ) ///
          (opattent opgrades ophomew  opsamecl optalkmu         )

   rename (oppatte  oppbest  oppsmok  oppstea  oppfigh          ) ///
          (oppaatte oppabest oppasmok oppaste  oppafigh         )

   rename (opmatte  opmbest  opmsmok  opmstea  opmfigh          ) ///
          (opmeatte opmebest opmesmok opmeste  opmefigh         )

   rename (actstea  actbrea  actfigh  actsmea  actalco  actsmok ) ///
          (actsteal actbreak actfight actsmear actalcoh actsmoke)

   rename (actatte  acthome  actimpc  actclot  actimpm  actspor ) ///
          (actatten acthomew actimpcl actcloth actimpmu actsport)

   rename (rpatteg  rpatteb  rpnattg  rpnattb                   ) ///
          (rpaatteg rpaatteb rpanattg rpanattb                  )

   rename (rmatteg  rmatteb  rmnattg  rmnattb                   ) ///
          (rmeatteg rmeatteb rmenattg rmenattb                  )

   save _pY, replace

// [1b] append pupil data _p*.dta, with some final cleaning
//      file created: _pVWXY.dta

   clear
   append using _pV _pW _pX _pY

   foreach v of varlist hobb* {
      qui replace `v' = (`v'!=.)
      label value `v'
   }

   foreach v of varlist isatte1-islie8 {
      qui replace `v' = (`v'!=.)
      label value `v'
   }

   label var isatte1   "Sanction F attentive: Show friend that it is stupid"
   label var isatte2   "Sanction F attentive: Show  that it is good"
   label var isatte3   "Sanction F attentive: Have less contact with friend"
   label var isatte4   "Sanction F attentive: Have more contact with friend"
   label var isatte5   "Sanction F attentive: Show disapproval in front of others"
   label var isatte6   "Sanction F attentive: Show approval in front of others"
   label var isatte7   "Sanction F attentive: Tattle to the teacher"
   label var isatte8   "Sanction F attentive: It doesn't matter"

   label var isnatt1   "Sanction F not attentive: Show friend that it is stupid"
   label var isnatt2   "Sanction F not attentive: Show friend that it is good"
   label var isnatt3   "Sanction F not attentive: Have less contact with friend"
   label var isnatt4   "Sanction F not attentive: Have more contact with friend"
   label var isnatt5   "Sanction F not attentive: Show disapproval in front of others"
   label var isnatt6   "Sanction F not attentive: Show approval in front of others"
   label var isnatt7   "Sanction F not attentive: Tattle to the teacher"
   label var isnatt8   "Sanction F not attentive: It doesn't matter"

   label var isbreak1  "Sanction F breaks sth.: Show friend that it is stupid"
   label var isbreak2  "Sanction F breaks sth.: Show friend that it is good"
   label var isbreak3  "Sanction F breaks sth.: Have less contact with friend"
   label var isbreak4  "Sanction F breaks sth.: Have more contact with friend"
   label var isbreak5  "Sanction F breaks sth.: Show disapproval in front of others"
   label var isbreak6  "Sanction F breaks sth.: Show approval in front of others"
   label var isbreak7  "Sanction F breaks sth.: Tattle to the teacher"
   label var isbreak8  "Sanction F breaks sth.: It doesn't matter"

   label var isnerd1   "Sanction F never bad: Show friend that it is stupid"
   label var isnerd2   "Sanction F never bad: Show friend that it is good"
   label var isnerd3   "Sanction F never bad: Have less contact with friend"
   label var isnerd4   "Sanction F never bad: Have more contact with friend"
   label var isnerd5   "Sanction F never bad: Show disapproval in front of others"
   label var isnerd6   "Sanction F never bad: Show approval in front of others"
   label var isnerd7   "Sanction F never bad: Tattle to the teacher"
   label var isnerd8   "Sanction F never bad: It doesn't matter"

   label var issteal1  "Sanction F steals: Show friend that it is stupid"
   label var issteal2  "Sanction F steals: Show friend that it is good"
   label var issteal3  "Sanction F steals: Have less contact with friend"
   label var issteal4  "Sanction F steals: Have more contact with friend"
   label var issteal5  "Sanction F steals: Show disapproval in front of others"
   label var issteal6  "Sanction F steals: Show approval in front of others"
   label var issteal7  "Sanction F steals: Tattle to the teacher"
   label var issteal8  "Sanction F steals: It doesn't matter"

   label var iskiss1   "Sanction F kisses: Show friend that it is stupid"
   label var iskiss2   "Sanction F kisses: Show friend that it is good"
   label var iskiss3   "Sanction F kisses: Have less contact with friend"
   label var iskiss4   "Sanction F kisses: Have more contact with friend"
   label var iskiss5   "Sanction F kisses: Show disapproval in front of others"
   label var iskiss6   "Sanction F kisses: Show approval in front of others"
   label var iskiss7   "Sanction F kisses: Tattle to the teacher"
   label var iskiss8   "Sanction F kisses: It doesn't matter"

   label var isdrug1   "Sanction F uses drugs: Show friend that it is stupid"
   label var isdrug2   "Sanction F uses drugs: Show friend that it is good"
   label var isdrug3   "Sanction F uses drugs: Have less contact with friend"
   label var isdrug4   "Sanction F uses drugs: Have more contact with friend"
   label var isdrug5   "Sanction F uses drugs: Show disapproval in front of others"
   label var isdrug6   "Sanction F uses drugs: Show approval in front of others"
   label var isdrug7   "Sanction F uses drugs: Tattle to the teacher"
   label var isdrug8   "Sanction F uses drugs: It doesn't matter"

   label var isalcoh1  "Sanction F drinks alcohol: Show friend that it is stupid"
   label var isalcoh2  "Sanction F drinks alcohol: Show friend that it is good"
   label var isalcoh3  "Sanction F drinks alcohol: Have less contact with friend"
   label var isalcoh4  "Sanction F drinks alcohol: Have more contact with friend"
   label var isalcoh5  "Sanction F drinks alcohol: Show disapproval in front of others"
   label var isalcoh6  "Sanction F drinks alcohol: Show approval in front of others"
   label var isalcoh7  "Sanction F drinks alcohol: Tattle to the teacher"
   label var isalcoh8  "Sanction F drinks alcohol: It doesn't matter"

   label var issmoke1  "Sanction F smokes: Show friend that it is stupid"
   label var issmoke2  "Sanction F smokes: Show friend that it is good"
   label var issmoke3  "Sanction F smokes: Have less contact with friend"
   label var issmoke4  "Sanction F smokes: Have more contact with friend"
   label var issmoke5  "Sanction F smokes: Show disapproval in front of others"
   label var issmoke6  "Sanction F smokes: Show approval in front of others"
   label var issmoke7  "Sanction F smokes: Tattle to the teacher"
   label var issmoke8  "Sanction F smokes: It doesn't matter"

   label var ismusic1  "Sanction F likes other music: Show friend that it is stupid"
   label var ismusic2  "Sanction F likes other music: Show friend that it is good"
   label var ismusic3  "Sanction F likes other music: Have less contact with friend"
   label var ismusic4  "Sanction F likes other music: Have more contact with friend"
   label var ismusic5  "Sanction F likes other music: Show disapproval in front of others"
   label var ismusic6  "Sanction F likes other music: Show approval in front of others"
   label var ismusic7  "Sanction F likes other music: Tattle to the teacher"
   label var ismusic8  "Sanction F likes other music: It doesn't matter"

   label var islie1    "Sanction F lies: Show friend that it is stupid"
   label var islie2    "Sanction F lies: Show friend that it is good"
   label var islie3    "Sanction F lies: Have less contact with friend"
   label var islie4    "Sanction F lies: Have more contact with friend"
   label var islie5    "Sanction F lies: Show disapproval in front of others"
   label var islie6    "Sanction F lies: Show approval in front of others"
   label var islie7    "Sanction F lies: Tattle to the teacher"
   label var islie8    "Sanction F lies: It doesn't matter"

// put variables into sensible order with the command -order-

   order advice sex age place1 place2 siblings money amoufri impofri, ///
      after(wave)
   order grade1-grade12 esattg1-essteb12, after(opinio12)
   order actbuyc, after(actcopy)
   order opphome, after(oppabest)
   order opmhome, after(opmebest)
   order wave   , after(namenr)

// add Dutch+English labels for the BigFive items
// the OCEAN dimension of personality is included in the varlabel of the item

   label var bigfiv1  "E gesloten|closed"
   label var bigfiv2  "A vriendelijk|friendly"
   label var bigfiv3  "O fantasierijk|imaginative"
   label var bigfiv4  "N zenuwachtig|nervous"
   label var bigfiv5  "C ordelijk|orderly"
   label var bigfiv6  "E stil|quiet"
   label var bigfiv7  "A aardig|nice"
   label var bigfiv8  "O creatief|creative"
   label var bigfiv9  "N nerveus|tense"
   label var bigfiv10 "C zorgvuldig|meticulous"
   label var bigfiv11 "E graag op mezelf|in him/herself"
   label var bigfiv12 "A hulpvaardig|helpful"
   label var bigfiv13 "O veelzijdig|versatile"
   label var bigfiv14 "N snel geraakt|quick-tempered"
   label var bigfiv15 "C nauwkeurig|accurate"
   label var bigfiv16 "E verlegen|shy"
   label var bigfiv17 "A behulpzaam|cooperative"
   label var bigfiv18 "O vernieuwend|innovative"
   label var bigfiv19 "N angstig|fearful"
   label var bigfiv20 "C netjes|tidy"

// deal with missing values

   mvdecode big*, mv(6/9)
   mvdecode act*, mv(6/9 99)
   mvdecode opattent-opsport, mv(6/9)
   mvdecode rme*, mv(6/9)
   mvdecode oppaatte-trust8, mv(6/9)
   mvdecode sex, mv(3 9)
   mvdecode amoufri impofri workfa1 workmo1, mv(9)
   mvdecode educfa educmo, mv(5/9)

/* If pupil is missing in 1-out-of-4 waves:

     "impute forward"  pupils absent in wave 2,3,4
     "impute backward" pupils absent in wave 1

   wave_pcopy marks that the pupil info was copied from other wave
*/

   gen byte  wave_pcopy = 0
   label var wave_pcopy "whether pupil info was carried from other wave"
   bys schoolnr namenr : gen k = _N
   tab k
   bys schoolnr namenr : egen twave = total(wave)     if k==3
   gen mwave = 10-twave                               if k==3
   bys schoolnr namenr : gen     copy = wave+1==mwave if k==3 & mwave>1
   bys schoolnr namenr : replace copy = wave-1==mwave if k==3 & mwave==1
   expand =2 if copy==1, gen(iscopy)
   replace wave = mwave  if iscopy==1
   replace wave_pcopy = 1 if iscopy==1
   drop copy iscopy mwave twave k
   bys schoolnr namenr : gen k = _N
   bys schoolnr namenr (wave): assert wave==_n if k==4
   tab k
   drop k

// trivial fixes
// no more missings in sex, and 517/11,702 on age

   egen mage   = min(age), by(schoolnr namenr)
   replace age = mage
   drop mage

   egen mnsex  = mean(sex), by(schoolnr namenr)
   replace sex = cond(mnsex>1.501,2,1)
   drop mnsex

   save _pVWXY, replace

// [1c] split _pVWXY.dta into 2 datasets
//
//      _knecht_p.dta : time-constant pupil-attributes,
//                     indexed by -schoolnr namenr-
//
//      _knecht_pt.dta: time-varying  pupil-attributes,
//                      indexed by -schoolnr namenr wave-
//

   use _pVWXY, clear

   loc sysvars schoolnr namenr wave
   assert !missing(schoolnr)
   assert !missing(namenr)
   assert !missing(wave)
   bys schoolnr namenr: assert _N<=4

// varlist_p : collects variables constant over waves

   loc  varlist_p
// unab varlist_p :

// varlist_pt : collects variables varying  over waves

   unab varlist_pt : pracs1-essteb12

// split unclassified vars into time-constant and time-varying variables

   unab  othervars : _all
   loc othervars : list othervars - sysvars
   loc othervars : list othervars - varlist_p
   loc othervars : list othervars - varlist_pt

   foreach v of loc othervars {
      /* check whether v varies within pupils across waves.  note that after
        -capt cmd- _rc contains 1 if the assert fails, else 0               */

      capt bys schoolnr namenr (`v'): assert `v'==`v'[1] if !missing(`v')
      if _rc {
         loc varlist_pt `varlist_pt' `v'
      }
      else {
         loc varlist_p  `varlist_p'  `v'
      }
   }

// dis as txt "time-constant variables   " _n ///
//     as res "{pmore}`varlist_p' {p_end}"

// dis as txt "time-varying variables    " _n ///
//     as res "{pmore}`varlist_pt'{p_end}"


// for time constant variables, fill in missing values in all waves

   foreach v of loc varlist_p {
      qui bys schoolnr namenr (`v'): replace `v'=`v'[1]
   }
   save _pVWXY2, replace

// =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
// save in seperate files
//    _knecht_p    time-constant pupil attributes
//    _knecht_pt   time-varying  pupil attributes
// =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

   use _pVWXY2, clear
      bys schoolnr namenr (wave): keep if _n==1
      keep schoolnr namenr `varlist_p'
      codebook, compact
   save _knecht_p, replace

   use _pVWXY2, clear
      keep schoolnr namenr wave `varlist_pt'
      codebook, compact
   save _knecht_pt, replace

// clean up the mess

   capt !erase _pV.dta
   capt !erase _pW.dta
   capt !erase _pX.dta
   capt !erase _pY.dta
   capt !erase _pVWXY.dta
   capt !erase _pVWXY2.dta


// ═══════════════════════════════════════════════════════════════════════════=
// [2]  prepare teacher/mentor data
//      steps similar to those for pupil data [1]
// ═══════════════════════════════════════════════════════════════════════════=

// [2a] clean up the teacher files

   // ────────────────────────────────────
   // cleanup WaveV=1: N=121 -> _mV.dta
   // ────────────────────────────────────

   use TeacherWaveV, clear

   replace schoolnr = trim(lower(schoolnr))

   rename matt(##)a  matt(#)  // pupil pays attention
   rename mbes(##)a  mbes(#)  // pupil does his best
   rename minl(##)a  minl(#)  // pupil easily influenced by other pupils
   rename minm(##)a  minm(#)  // pupil easily influenced by mentor
   rename mopi(##)a  mopi(#)  // pupil opinion leader

   gen byte wave = 1
   order wave, before(schoolnr)
   bys schoolnr : assert _N==1
// bys schoolnr (date): drop if _n>1  // drop repeated obs teachers

   save _mV, replace

   // ────────────────────────────────────
   // cleanup WaveW=2: N=118 -> _mW.dta
   // ────────────────────────────────────

   use TeacherWaveW, clear

   replace schoolnr = trim(lower(schoolnr))
   drop if trim(schoolnr) == "ak"     // mistyped class identifier
   drop if trim(schoolnr) == "14g"    // mistyped class identifier

   quietly destring best*,   replace  // best friends
   replace best1c = 15 if best1c==51  // correct likely typo
   replace best5c = 29 if best5c==92  // correct likely typo

   rename dateb      date
   rename best*a     bestA*   // meaning numbers>nkids? outside class?
   rename best*b     bestB*
   rename best*c     bestC*
   rename msta(##)w2 msta(#)  // social-emotional stability of pupil
   rename mbes(##)w2 mbes(#)  // pupil does his best
   rename minp(##)b  minp(#)  // pupil easily influenced positively
   rename minn(##)b  minn(#)  // pupil easily influenced negatively
   rename minm(##)b  minm(#)  // pupil easily influenced by mentor
   rename mopi(##)b  mopi(#)  // pupil opinion leader

   gen byte wave = 2
   order wave, before(schoolnr)
   order mcontact-mrespect homone1-homoft5, after(yearsexp)
   drop resp class
// bys schoolnr : assert _N==1        // FAILS!!
   bys schoolnr (date): drop if _n>1  // drop repeated obs teachers

   save _mW, replace

   // ────────────────────────────────────
   // cleanup WaveX=3: N = 111 -> _mX.dta
   // ────────────────────────────────────

   use TeacherWaveX, clear

   replace schoolnr = lower(schoolnr)
   drop if schoolnr=="081"    // must be typo

   rename datec      date
   rename best*ac    bestA*   // best friends
   rename best*bc    bestB*   // meaning numbers>nkids? outside class?
   rename best*cc    bestC*
   rename msta(##)c  msta(#)  // social-emotional stability of pupil
   rename mbes(##)c  mbes(#)  // pupil does his best
   rename minp(##)c  minp(#)  // pupil easily influenced positively
   rename minn(##)c  minn(#)  // pupil easily influenced negatively
   rename minm(##)c  minm(#)  // pupil easily influenced by mentor
   rename mopi(##)c  mopi(#)  // pupil opinion leader

   gen byte wave = 3
   order wave, before(schoolnr)
   order intropro-introcon staclas1-staclas6, after(mentexp)
   drop resp class
// bys schoolnr : assert _N==1
   bys schoolnr (date): drop if _n>1  // drop repeated obs teachers

   save _mX, replace

   // ────────────────────────────────────
   // cleanup Wave4=Y: N = 84 -> _mY.dta
   // ────────────────────────────────────

   use TeacherWaveY, clear

   replace schoolnr = trim(lower(schoolnr))
   drop if trim(schoolnr)==""

   rename dated      date
   rename best*ad    bestA*   // best friends
   rename best*bd    bestB*   // meaning numbers>nkids? outside class?
   rename best*cd    bestC*
   rename msta(##)d  msta(#)  // social-emotional stability of pupil
   rename mbes(##)d  mbes(#)  // pupil does his best
   rename minp(##)d  minp(#)  // pupil easily influenced positively
   rename minn(##)d  minn(#)  // pupil easily influenced negatively
   rename minm(##)d  minm(#)  // pupil easily influenced by mentor
   rename mopi(##)d  mopi(#)  // pupil opinion leader

   gen byte wave = 4
   order wave, before(schoolnr)
// bys schoolnr : assert _N==1
   bys schoolnr (date): drop if _n>1  // drop repeated obs teachers

   save _mY, replace

// [2b] combine the mentor (teacher) files _m?.dta, ?={V,W,X,Y}
//      file created _mVWXY.dta

// append mentor files, and reorder/fill in

   clear
   append using _mV _mW _mX _mY
   drop date yearsexp
   compress

/* If mentor is missing in 1-out-of-4 waves:

     "impute forward"  mentor absent in wave 2,3,4
     "impute backward" mentor absent in wave 1

   wave_mcopy marks that the mentor info was copied from another wave
*/

   gen byte  wave_mcopy = 0
   label var wave_mcopy "whether mentor info was carried from other wave"
   bys schoolnr : gen k = _N
   tab k
   bys schoolnr : egen twave = total(wave)     if k==3
   gen mwave = 10-twave                        if k==3
   bys schoolnr : gen     copy = wave+1==mwave if k==3 & mwave>1
   bys schoolnr : replace copy = wave-1==mwave if k==3 & mwave==1
   expand =2 if copy==1, gen(iscopy)
   replace wave = mwave   if iscopy==1
   replace wave_mcopy = 1 if iscopy==1
   drop copy iscopy mwave twave k
   bys schoolnr : gen k = _N
   bys schoolnr (wave): assert wave==_n if k==4
   tab k
   drop k

   // mentor's sex and age are renamed to msex and mage

   gen byte msex = cond(sex=="2",2,1) if sex!=""
   label define msex 1 female 2 male
   label value msex msex
   label var msex "gender"
   drop sex

   rename age mage

// sensible order of variables

   order minm25 minm26, after(minm24)
   order minm31 minm32, after(minm30)
   order mopi31 mopi32, after(mopi30)
   order mbes31 mbes32, after(mbes30)
   order schoolnr wave classname edulevel msex mage                     ///
         lessonsh menthour menttask mentexp mcontact mparintr mgetalon  ///
         mrespect intropro-package2 subject1-subject7 othercl           ///
         meoatten-meogood homone1-homoft5 rulelate-lateoft5

// change coding and variable labels

   label var homone1   "P forgot homework 1x: don't say anything"
   label var homone2   "P forgot homework 1x: give scolding"
   label var homone3   "P forgot homework 1x: detention work"
   label var homone4   "P forgot homework 1x: detain"
   label var homone5   "P forgot homework 1x: inform parents"

   label var homtwo1   "P forgot homework 2/3x: don't say anything"
   label var homtwo2   "P forgot homework 2/3x: give scolding"
   label var homtwo3   "P forgot homework 2/3x: detention work"
   label var homtwo4   "P forgot homework 2/3x: detain"
   label var homtwo5   "P forgot homework 2/3x: inform parents"

   label var homoft1   "P forgot homework >3x: don't say anything"
   label var homoft2   "P forgot homework >3x: give scolding"
   label var homoft3   "P forgot homework >3x: detention work"
   label var homoft4   "P forgot homework >3x: detain"
   label var homoft5   "P forgot homework >3x: inform parents"

   label var lateone1  "P late 1x: don't say anything"
   label var lateone2  "P late 1x: give scolding"
   label var lateone3  "P late 1x: detention work"
   label var lateone4  "P late 1x: detain"
   label var lateone5  "P late 1x: inform parents"

   label var latetwo1  "P late 2/3x: don't say anything"
   label var latetwo2  "P late 2/3x: give scolding"
   label var latetwo3  "P late 2/3x: detention work"
   label var latetwo4  "P late 2/3x: detain"
   label var latetwo5  "P late 2/3x: inform parents"

   label var lateoft1  "P late >3x: don't say anything"
   label var lateoft2  "P late >3x: give scolding"
   label var lateoft3  "P late >3x: detention work"
   label var lateoft4  "P late >3x: detain"
   label var lateoft5  "P late >3x: inform parents"

   egen nvalid = rownonmiss(homone1-lateoft5)
   foreach v of varlist homone1-homoft5 lateone1-lateoft5 {
      qui replace `v' = 0 if missing(`v') & nvalid>=1
   }
   drop nvalid
   // tab1 homone1-homoft5 lateone1-lateoft5, missing

   // some more relabeling

   label var meoatten  "How imp: P always pay attention in class?"
   label var meobest   "How imp: P always do their best at school?"
   label var meohomew  "How imp: P always do their homework?"
   label var meograde  "How imp: P always get good grades?"
   label var meotime   "How imp: P always in time in class?"
   label var meosmoke  "How imp: P do not smoke?"
   label var meosteal  "How imp: P do not steal?"
   label var meofight  "How imp: P never involved in a fight?"
   label var meogood   "How imp: P go well with each other?"

// spread time-constant attributes over all waves

   foreach v of varlist classname-lateoft5 {
      qui bys schoolnr (`v'): replace `v' = `v'[1]
   }

// reshape mentor data to long form with respect to namenr

   loc mvars  matt mbes minl bestA bestB bestC msta minp minn minm mopi
   reshape long `mvars', i(schoolnr wave) j(namenr)

   // 3442 all-missing obs - namenr>class-size
   egen nvalid = rownonmiss(`mvars')
   egen namenr_max = max((nvalid>0)*namenr), by(schoolnr wave)
   drop if namenr>namenr_max
   drop nvalid namenr_max

// fill in remaining missings in student-variables as 0
// ... provided teacher marked at least 1

   tempvar maxv
   foreach v of loc mvars  {
      egen `maxv' = max(`v'), by(schoolnr wave)
      replace `v' = 0 if missing(`v') & !missing(`maxv') & `maxv'>0
      cap  drop `maxv'
   }

// variable labels ...

   label var matt   "M: P pays attention in class"
   label var mbes   "M: P does his/her best"
   label var minl   "M: P easily influenced by other pupils"
   label var bestA  "M: P best friend A"
   label var bestB  "M: P best friend B"
   label var bestC  "M: P best friend C"
   label var msta   "M: P social-emotional stability"
   label var minp   "M: P easily influenced positively by other pupils"
   label var minn   "M: P easily influenced negatively by other pupils"
   label var minm   "M: P easily influenced by mentor"
   label var mopi   "M: P opinion leader"

   label var rulelate "Special rules for pupils late in class"
   foreach v of varlist classname-lateoft5 {
      label var `v' `"M: `:variable label `v''"'
   }
   drop subject*

   sort schoolnr namenr wave
   codebook, compact

   save _mVWXY, replace

// [2c] split _mVWXY.dta into time-constant and time-varying teacher attributes
//
//      _knecht_m.dta    time-constant attributes of mentor/class
//                       indexed by schoolnr
//
//      _knecht_mpt.dta  time-varying mentor-pupil attributes,
//                       indexed by -schoolnr wave namenr-
//
//      _knecht_mdt.dta  time-varying mentor-dyad variable "best friends"
//                       indexed by -schoolnr wave namenr_ego namenr_alter-

   use _mVWXY, clear
      keep schoolnr-lateoft5
      bys schoolnr: drop if _n>1
      drop namenr
      codebook, compact
   save _knecht_m, replace

   use _mVWXY, clear
      keep schoolnr namenr wave matt mbes minl msta minp minn minm mopi
      codebook, compact
   save _knecht_mpt, replace

   use _mVWXY, clear
      keep schoolnr wave namenr
      rename namenr namenr_alter
      save _x, replace // !!user

      use _mVWXY, clear
      joinby schoolnr wave using _x
      rename namenr namenr_ego
      bys schoolnr wave namenr_ego namenr_alter: assert _N==1

      gen friend_mentor = inlist(namenr_alter, bestA, bestB, bestC)
      label var friend_mentor "mentor: alter among 3 best friends of ego"
      keep schoolnr wave namenr_ego namenr_alter friend_mentor
      codebook, compact
   save _knecht_mdt, replace

   cap !erase _mV.dta
   cap !erase _mW.dta
   cap !erase _mX.dta
   cap !erase _mY.dta
   cap !erase _x
   cap !erase _mVWXY.dta


// ═══════════════════════════════════════════════════════════════════════════=
// [3]  Create _knecht_dyad.dta with all network variables taken from the x
//      pupil data and the "best friends" variable from the mentor data
//
//      Data are indexed by -schoolnr wave namenr_ego namenr_alter-
//
//      Only pupils pupils who participated themselves are included.
// ═══════════════════════════════════════════════════════════════════════════=

   loc networks  pracs*  emosup* basis*  person* friend* wish*   dislik* ///
                 leasur* bully*  samemu* samecl* lend*   notlen* opinio* ///
                 grade*  esattg* esattb* essteg* essteb*

   use _knecht_pt, clear
   keep schoolnr wave namenr
   rename namenr namenr_alter
   save _x, replace

   use _knecht_pt, clear
   keep schoolnr wave namenr `networks'
   joinby schoolnr wave using _x
   rename namenr namenr_ego
   order namenr_ego namenr_alter, after(wave)
   bys schoolnr wave namenr_ego namenr_alter: assert _N==1
   !erase _x

   loc networks = subinstr("`networks'","*","",.)
   foreach v of loc networks {
      gen byte `v' = 0
      forvalues i = 1/12 {
         qui bys schoolnr wave namenr_ego: ///
             replace `v' = 1 if `v'`i'==namenr_alter

         // you may prefer to set tie info to missing if v==99
            // qui bys schoolnr wave namenr_ego: ///
            //         replace `v' = . if `v'`i'==98

         // you may prefer to assume that an ego would have mentioned everyone
            // if a pupil nominate more than 12 alters
            // qui bys schoolnr wave namenr_ego: ///
            //         replace `v' = 1 if `v'`i'==99
      }
   }
   drop pracs1-essteb12

   label var pracs   "E receives practical support from A"
   label var emosup  "E receives emotional support from A"
   label var basis   "E was friends with A at primary school"
   label var person  "E talks about personal things with A"
   label var friend  "E mentions A as best friend"
   label var wish    "E wants to be friend with A"
   label var dislik  "E dislikes A"
   label var leasur  "E meets A outside school"
   label var bully   "E bullied by A"
   label var samemu  "E like same music as A"
   label var samecl  "E like same cloths as A"
   label var lend    "E would lend EUR25 to A"
   label var notlen  "E would never lend EUR25 to A"
   label var opinio  "E thinks A's opionion is important"
   label var grade   "E compares grades to A"
   label var esattg  "E expects positive sanction from A when attentive"
   label var esattb  "E expects negative sanction from A when attentive"
   label var essteg  "E expects positive sanction from A when stealing"
   label var essteb  "E expects negative sanction from A when stealing"

   merge 1:1 schoolnr wave namenr_ego namenr_alter ///
      using _knecht_mdt, keep(match master)

   save _knecht_dyad, replace

   use _knecht_pt, clear
   drop pracs1-essteb12
   save, replace


/* ═════════════════════════════════════════════════════════════════════════ //
   [4] Finally, we want to enrich the dyadlist dataset knecht_dyad.dta with
       a selection of the ego/alter attributes taken from pupils and mentors

       note that the dyadlist dataset is indexed by the variables
          -schoolnr wave namenr_ego namenr_alter-

       Beware: the dyadlist dataset contains ALL network variables from the
       pupils and mentors. To reduce filesize, you may obviously drop variables
       you are not interested in
// ═════════════════════════════════════════════════════════════════════════ */

// [4.1] create a log file with the codebooks for the available datasets
//
// !! DEVELOPER
// This code snippet produces the codebook output file and need only to be
// invoked after modifying code before here

if (0) {
   set rmsg off
   cap log close
   log using knecht_codebooks.txt, text replace

   dis as txt `"DYADIC VARIABLES are in "_knecht_dyad.dta""'
   dis as txt `"selected variables should be named in global "knecht_dyad""'

      use _knecht_dyad,  clear
      codebook, compact

   dis as txt "{hline}"
   dis as txt `"PUPIL'S TIME-CONSTANT VARIABLES are in "_knecht_p.dta""'
   dis as txt `"selected variables should be named in global "knecht_p""'

      use _knecht_p, clear
      codebook, compact

   dis as txt "{hline}"
   dis as txt `"PUPIL'S TIME-VARYING VARIABLES from "_knecht_pt.dta""'
   dis as txt `"selected variables should be named in global "knecht_pt""'

      use _knecht_pt, clear
      codebook, compact

   dis as txt "{hline}"
   dis as txt `" MENTOR'S TIME-CONSTANT VARIABLES from "_knecht_m.dta""'
   dis as txt `"selected variables should be named in global "knecht_m""'

      use _knecht_m, clear
      codebook, compact

   dis as txt "{hline}"
   dis as txt `"MENTOR'S TIME-VARYING PUPIL-LEVEL VARS from "_knecht_mpt.dta""'
   dis as txt `"selected variables should be named in global "knecht_mpt""'

      use _knecht_mpt, clear
      codebook, compact

   log close
   exit
}

// Inspection of datasets

if (0) {
   describe using _knecht_dyad
   describe using _knecht_p
   describe using _knecht_pt
   describe using _knecht_m
   describe using _knecht_mpt
}

// [4.2] !!USER
//       ADD THE SPECIFICATION OF THE VARIABLES TO BE INCLUDED
//
//       leave a specification empty if no variables are needed
//       if you want all variables specify "_all"

   global knecht_dyad  "friend" 
   global knecht_p     "sex advice relfath relmoth landmo1 landfa1"
   // educfa educmo are not working. I don't know why?
   
   global knecht_pt    "music1*"
   global knecht_m     ""
   global knecht_mpt   ""

/* example:

   global knecht_dyad "lend"        // dyad variables
   global knecht_p    "sex"         // pupil's sex
   global knecht_pt   "bigfiv*"     // BigFive items for pupils (all waves)
   global knecht_m    ""            // none
   global knecht_mpt  "msta"        // teacher assessment emotional stability
*/

// [4.3] !! USER: NO CHANGES BEYOND THIS POINT OF THE STATA SCRIPT
//       !! THE SCRIPT WILL CONSTRUCT THE FINAL DATASET: knecht_edyad.dta
//       !! YOU MAY NOW RUN THE DO SCRIPT -- SIT BACK AND RELAX

   if "$knecht_dyad" == "<varlist>" & ///
      "$knecht_p"    == "<varlist>" & ///
      "$knecht_pt"   == "<varlist>" & ///
      "$knecht_m"    == "<varlist>" & ///
      "$knecht_mpt"  == "<varlist>" {

      global knecht_dyad "_all"
      global knecht_p    "_all"
      global knecht_pt   "_all"
      global knecht_m    "_all"
      global knecht_mpt  "_all"

      dis as txt ///
          "The global macros knecht_* in [4.2] have not yet been defined"
   }

   if "$knecht_dyad" == "<varlist>" | ///
      "$knecht_p"    == "<varlist>" | ///
      "$knecht_pt"   == "<varlist>" | ///
      "$knecht_m"    == "<varlist>" | ///
      "$knecht_mpt"  == "<varlist>" {

      dis as err "the macros knecht_* in [4.2] to select variables not correct"
      exit 198
   }

// prepare for merging

   use _knecht_dyad,  clear
   drop if namenr_ego==namenr_alter
   if "$knecht_dyad" != "_all" {
      unab dyadvars : $knecht_dyad
      loc  sysvars    schoolnr wave namenr_ego namenr_alter
      loc  dyadvars : list dyadvars - sysvars
      keep `sysvars' `dyadvars'
   }
   save knecht_edyad, replace

// merge ...

   if "$knecht_p" != "" {
      use _knecht_p, clear

      loc  sysvars   schoolnr namenr
      unab p_vars  : $knecht_p
      loc  p_vars  : list p_vars - sysvars

      keep schoolnr namenr `p_vars'
      rename (namenr `p_vars') =_ego
      save _f_ego, replace
      rename *_ego *_alter
      save _f_alter, replace

      use knecht_edyad, clear
      merge n:1 schoolnr namenr_ego   using _f_ego  , nogen keep(match master)
      merge n:1 schoolnr namenr_alter using _f_alter, nogen keep(match master)
      save knecht_edyad, replace

      erase _f_ego.dta
      erase _f_alter.dta
   }

   if "$knecht_pt" != "" {
      use _knecht_pt, clear

      loc  sysvars   schoolnr namenr wave
      unab pt_vars : $knecht_pt
      loc  pt_vars : list pt_vars - sysvars

      keep schoolnr namenr wave `pt_vars'
      rename (namenr `pt_vars') =_ego
      save _f_ego, replace
      rename *_ego *_alter
      save _f_alter, replace

      use knecht_edyad, clear
      merge n:1 schoolnr namenr_ego   wave using _f_ego  , ///
         nogen keep(match master)
      merge n:1 schoolnr namenr_alter wave using _f_alter, ///
         nogen keep(match master)
      save knecht_edyad, replace

      erase _f_ego.dta
      erase _f_alter.dta
   }

   if "$knecht_m" != "" {
      use knecht_edyad, clear
      merge n:1 schoolnr using _knecht_m, ///
         nogen keepusing($knecht_m) keep(match master)
      save knecht_edyad, replace
   }

   if "$knecht_mpt" != "" {
      use _knecht_mpt, clear

      loc  sysvars    schoolnr namenr wave
      unab mpt_vars : $knecht_mpt
      loc  mpt_vars : list mpt_vars - sysvars

      keep schoolnr namenr wave `mpt_vars'
      rename (namenr `mpt_vars') =_ego
      save _f_ego, replace
      rename *_ego *_alter
      save _f_alter, replace

      use knecht_edyad, clear
      merge n:1 schoolnr namenr_ego   wave using _f_ego  , ///
         nogen keep(match master)
      merge n:1 schoolnr namenr_alter wave using _f_alter, ///
         nogen keep(match master)
      save knecht_edyad, replace

      erase _f_ego.dta
      erase _f_alter.dta
   }

// cleanup: remove datafiles no longer needed

   // !erase _*.dta

// [4.4] produce a compact codebook for the created datasets

   use knecht_edyad, clear
   codebook, compact
