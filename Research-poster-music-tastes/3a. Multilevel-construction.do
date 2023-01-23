/*
Purpose: creat a new dataset to do the multilevel model in mplus and stata
*/

use knecht_edyad_music.dta
keep schoolnr wave namenr_ego genre_ego
browse

codebook schoolnr
tabulate schoolnr, generate(g)

replace g2=2 if g2==1

replace g3=3 if g3==1
replace g4=4 if g4==1
replace g5=5 if g5==1
replace g6=6 if g6==1
replace g7=7 if g7==1
replace g8=8 if g8==1
replace g9=9 if g9==1
replace g10=10 if g10==1
replace g11=11 if g11==1
replace g12=12 if g12==1
replace g13=13 if g13==1
replace g14=14 if g14==1
replace g15=15 if g15==1
replace g16=16 if g16==1
replace g17=17 if g17==1
replace g18=18 if g18==1
replace g19=19 if g19==1
replace g20=20 if g20==1
replace g21=21 if g21==1
replace g22=22 if g22==1
replace g23=23 if g23==1
replace g24=24 if g24==1
replace g25=25 if g25==1
replace g26=26 if g26==1
replace g27=27 if g27==1
replace g28=28 if g28==1
replace g29=29 if g29==1
replace g30=30 if g30==1
replace g31=31 if g31==1
replace g32=32 if g32==1
replace g33=33 if g33==1
replace g34=34 if g34==1
replace g35=35 if g35==1
replace g36=36 if g36==1
replace g37=37 if g37==1
replace g38=38 if g38==1
replace g39=39 if g39==1
replace g40=40 if g40==1
replace g41=41 if g41==1
replace g42=42 if g42==1
replace g43=43 if g43==1
replace g44=44 if g44==1

replace g45=45 if g45==1
replace g46=46 if g46==1
replace g47=47 if g47==1
replace g48=48 if g48==1
replace g49=49 if g49==1
replace g50=50 if g50==1
replace g51=51 if g51==1
replace g52=52 if g52==1
replace g53=53 if g53==1

replace g54=54 if g54==1
replace g55=55 if g55==1
replace g56=56 if g56==1
replace g57=57 if g57==1

replace g58=58 if g58==1
replace g59=59 if g59==1
replace g60=60 if g60==1
replace g61=61 if g61==1

replace g62=62 if g62==1
replace g63=63 if g63==1
replace g64=64 if g64==1

replace g65=65 if g65==1
replace g66=66 if g66==1
replace g67=67 if g67==1
replace g68=68 if g68==1

replace g69=69 if g69==1
replace g70=70 if g70==1
replace g71=71 if g71==1

replace g72=72 if g72==1
replace g73=73 if g73==1
replace g74=74 if g74==1

replace g75=75 if g75==1
replace g76=76 if g76==1
replace g77=77 if g77==1


replace g78=78 if g78==1
replace g79=79 if g79==1
replace g80=80 if g80==1
replace g81=81 if g81==1
replace g82=82 if g82==1
replace g83=83 if g83==1
replace g84=84 if g84==1
replace g85=85 if g85==1
replace g86=86 if g86==1
replace g87=87 if g87==1
replace g88=88 if g88==1
replace g89=89 if g89==1
replace g90=90 if g90==1
replace g91=91 if g91==1
replace g92=92 if g92==1
replace g93=93 if g93==1
replace g94=94 if g94==1
replace g95=95 if g95==1
replace g96=96 if g96==1
replace g97=97 if g97==1
replace g98=98 if g98==1
replace g99=99 if g99==1
replace g100=100 if g100==1
replace g101=101 if g101==1
replace g102=102 if g102==1
replace g103=103 if g103==1
replace g104=104 if g104==1
replace g105=105 if g105==1
replace g106=106 if g106==1
replace g107=107 if g107==1
replace g108=108 if g108==1
replace g109=109 if g109==1
replace g110=110 if g110==1
replace g111=111 if g111==1
replace g112=112 if g112==1

replace g113=113 if g113==1
replace g114=114 if g114==1
replace g115=115 if g115==1
replace g116=116 if g116==1
replace g117=117 if g117==1
replace g118=118 if g118==1
replace g119=119 if g119==1
replace g120=120 if g120==1
replace g121=121 if g121==1
replace g122=122 if g122==1
replace g123=123 if g123==1
replace g124=124 if g124==1
replace g125=125 if g125==1
replace g126=126 if g126==1

gen schoolnr1 = g1+g2+g3+g4+g5+g6+g7+g8+g9+g10+g11+g12+g13+g14+g15+g16+g17 ///
             +g18+g19+g20+g21+g22+g23+g24+g25+g26+g27+g28+g29+g30+g31+g32 ///
			 +g33+g34+g35+g36+g37+g38+g39+g40+g41+g42+g43+g44+g45+g46+ ///
			 g47+g48+g49+g50+g51+g52+g53+g54+g55+g56+g57+g58+g59+g60+ ///
			 g61+g62+g63+g64+g65+g66+g67+g68+g69+g70+g71+g72+g73+g74+ ///
			 g75+g75+g76+g77+g78+g79+g80+g81+g82+g83+g84+g85+g86+g87+ ///
			 g88+g89+g90+g91+g92+g93+g94+g95+g96+g97+g98+g99+g100+g101 ///
			 +g102+g103+g104+g105+g106+g107+g108+g109+g110+g111+g112 ///
			 +g113+g114+g115+g116+g117+g118+g119+g120+g121+g122+g123+ ///
			 g124+g125+g126
			 
keep schoolnr1 wave namenr_ego genre_ego
save multilevel_dataset, replace
clear all
cls

use multilevel_dataset
stata2mplus using multilevel_dataset


