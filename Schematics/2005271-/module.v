// Verilog module auto-generated for AGC module A22 by dumbVerilog.py

module A22 ( 
  rst, CCH34, CCH35, CCHG_, CGA22, CHWL01_, CHWL02_, CHWL03_, CHWL04_, CHWL05_,
  CHWL06_, CHWL07_, CHWL08_, CHWL09_, CHWL10_, CHWL11_, CHWL12_, CHWL13_,
  CHWL14_, CHWL16_, DKBSNC, DKSTRT, END, F12B, FS13, FS14, GOJAM, HIGH0_,
  HIGH1_, HIGH2_, HIGH3_, PC15_, WCH34_, WCH35_, WCHG_, XB3_, XB4_, XT1_,
  BSYNC_, CCH13, DATA_, DKCTR2, DKCTR3, DKCTR3_, DKDAT_, DLKCLR, F12B_, FS13_,
  LOW0_, LOW1_, LOW2_, LOW3_, LOW4_, LOW5_, LOW6_, LOW7_, ORDRBT, RCH13_,
  RDOUT_, WCH13_, WDORDR, WRD1B1, WRD1BP, WRD2B2, WRD2B3, ADVCTR, CCH14,
  CH1307, DKCTR1, DKCTR1_, DKCTR2_, DKCTR4, DKCTR4_, DKCTR5, DKCTR5_, DKDATA,
  DKDATB, F14H, RCH14_, WCH14_, d16CNT, d1CNT, d32CNT
);

input wire rst, CCH34, CCH35, CCHG_, CGA22, CHWL01_, CHWL02_, CHWL03_, CHWL04_,
  CHWL05_, CHWL06_, CHWL07_, CHWL08_, CHWL09_, CHWL10_, CHWL11_, CHWL12_,
  CHWL13_, CHWL14_, CHWL16_, DKBSNC, DKSTRT, END, F12B, FS13, FS14, GOJAM,
  HIGH0_, HIGH1_, HIGH2_, HIGH3_, PC15_, WCH34_, WCH35_, WCHG_, XB3_, XB4_,
  XT1_;

inout wire BSYNC_, CCH13, DATA_, DKCTR2, DKCTR3, DKCTR3_, DKDAT_, DLKCLR,
  F12B_, FS13_, LOW0_, LOW1_, LOW2_, LOW3_, LOW4_, LOW5_, LOW6_, LOW7_, ORDRBT,
  RCH13_, RDOUT_, WCH13_, WDORDR, WRD1B1, WRD1BP, WRD2B2, WRD2B3;

output wire ADVCTR, CCH14, CH1307, DKCTR1, DKCTR1_, DKCTR2_, DKCTR4, DKCTR4_,
  DKCTR5, DKCTR5_, DKDATA, DKDATB, F14H, RCH14_, WCH14_, d16CNT, d1CNT, d32CNT;

// Gate A22-U146B
pullup(DKDATA);
assign #0.2  DKDATA = rst ? 0 : ((0|DKDAT_|RDOUT_|BSYNC_) ? 1'b0 : 1'bz);
// Gate A22-U147A
pullup(DKDATB);
assign #0.2  DKDATB = rst ? 0 : ((0|BSYNC_|RDOUT_|DKDAT_) ? 1'b0 : 1'bz);
// Gate A22-U130A
pullup(DKCTR5);
assign #0.2  DKCTR5 = rst ? 0 : ((0|DKCTR5_|g47140) ? 1'b0 : 1'bz);
// Gate A22-U112B
pullup(DKCTR2);
assign #0.2  DKCTR2 = rst ? 1'bz : ((0|g47122) ? 1'b0 : 1'bz);
// Gate A22-U124B
pullup(DKCTR3);
assign #0.2  DKCTR3 = rst ? 0 : ((0|g47130) ? 1'b0 : 1'bz);
// Gate A22-U139A
pullup(LOW6_);
assign #0.2  LOW6_ = rst ? 1'bz : ((0|g47240) ? 1'b0 : 1'bz);
// Gate A22-U108B
pullup(DKCTR1);
assign #0.2  DKCTR1 = rst ? 0 : ((0|g47114) ? 1'b0 : 1'bz);
// Gate A22-U127A
pullup(DKCTR4);
assign #0.2  DKCTR4 = rst ? 0 : ((0|DKCTR4_|g47134) ? 1'b0 : 1'bz);
// Gate A22-U237A
pullup(g47457);
assign #0.2  g47457 = rst ? 1'bz : ((0|g47456|g47458) ? 1'b0 : 1'bz);
// Gate A22-U126B
pullup(g47133);
assign #0.2  g47133 = rst ? 0 : ((0|g47134|DKCTR4) ? 1'b0 : 1'bz);
// Gate A22-U238A
pullup(g47458);
assign #0.2  g47458 = rst ? 0 : ((0|CCH35|g47457) ? 1'b0 : 1'bz);
// Gate A22-U136A
pullup(g47248);
assign #0.2  g47248 = rst ? 1'bz : ((0|g47245|g47249) ? 1'b0 : 1'bz);
// Gate A22-U125B
pullup(g47134);
assign #0.2  g47134 = rst ? 1'bz : ((0|g47135|g47128|g47133) ? 1'b0 : 1'bz);
// Gate A22-U126A
pullup(g47136);
assign #0.2  g47136 = rst ? 0 : ((0|DKCTR4_|g47135) ? 1'b0 : 1'bz);
// Gate A22-U125A
pullup(g47135);
assign #0.2  g47135 = rst ? 0 : ((0|g47134|g47136|g47128) ? 1'b0 : 1'bz);
// Gate A22-U136B
pullup(g47246);
assign #0.2  g47246 = rst ? 1'bz : ((0|g47247|g47244) ? 1'b0 : 1'bz);
// Gate A22-U219A
pullup(g47324);
assign #0.2  g47324 = rst ? 0 : ((0|CCH34|g47323) ? 1'b0 : 1'bz);
// Gate A22-U131B
pullup(DKDAT_);
assign #0.2  DKDAT_ = rst ? 1'bz : ((0|g47254|ORDRBT) ? 1'b0 : 1'bz);
// Gate A22-U210A
pullup(g47341);
assign #0.2  g47341 = rst ? 0 : ((0|CCH34|g47340) ? 1'b0 : 1'bz);
// Gate A22-U246A
pullup(g47440);
assign #0.2  g47440 = rst ? 1'bz : ((0|g47439|g47441) ? 1'b0 : 1'bz);
// Gate A22-U118B
pullup(WDORDR);
assign #0.2  WDORDR = rst ? 1'bz : ((0|g47147|g47153) ? 1'b0 : 1'bz);
// Gate A22-U210B
pullup(g47342);
assign #0.2  g47342 = rst ? 0 : ((0|HIGH1_|LOW0_|g47340) ? 1'b0 : 1'bz);
// Gate A22-U259B
pullup(g47416);
assign #0.2  g47416 = rst ? 0 : ((0|HIGH2_|LOW0_|g47614) ? 1'b0 : 1'bz);
// Gate A22-U120B
pullup(ORDRBT);
assign #0.2  ORDRBT = rst ? 0 : ((0|g47153|g47156) ? 1'b0 : 1'bz);
// Gate A22-U231A
pullup(g47402);
assign #0.2  g47402 = rst ? 1'bz : ((0|g47401|g47403) ? 1'b0 : 1'bz);
// Gate A22-U236B
pullup(g47412);
assign #0.2  g47412 = rst ? 0 : ((0|LOW3_|HIGH3_|g47410) ? 1'b0 : 1'bz);
// Gate A22-U160A A22-U159A A22-U159B
pullup(WCH13_);
assign #0.2  WCH13_ = rst ? 1'bz : ((0|g47201) ? 1'b0 : 1'bz);
// Gate A22-U250A
pullup(g47431);
assign #0.2  g47431 = rst ? 1'bz : ((0|g47430|g47432) ? 1'b0 : 1'bz);
// Gate A22-U151B
pullup(g47223);
assign #0.2  g47223 = rst ? 0 : ((0|XB4_|XT1_) ? 1'b0 : 1'bz);
// Gate A22-U231B
pullup(g47401);
assign #0.2  g47401 = rst ? 0 : ((0|WCH35_|CHWL02_) ? 1'b0 : 1'bz);
// Gate A22-U105A
pullup(g47111);
assign #0.2  g47111 = rst ? 0 : ((0|g47110|g47112|g47108) ? 1'b0 : 1'bz);
// Gate A22-U105B
pullup(g47110);
assign #0.2  g47110 = rst ? 1'bz : ((0|g47111|g47108|d1CNT) ? 1'b0 : 1'bz);
// Gate A22-U106A
pullup(g47112);
assign #0.2  g47112 = rst ? 0 : ((0|g47114|g47111) ? 1'b0 : 1'bz);
// Gate A22-U209B
pullup(g47344);
assign #0.2  g47344 = rst ? 0 : ((0|WCH34_|CHWL06_) ? 1'b0 : 1'bz);
// Gate A22-U103A
pullup(ADVCTR);
assign #0.2  ADVCTR = rst ? 0 : ((0|BSYNC_|RDOUT_|WDORDR) ? 1'b0 : 1'bz);
// Gate A22-U248A
pullup(g47436);
assign #0.2  g47436 = rst ? 1'bz : ((0|g47435|g47437) ? 1'b0 : 1'bz);
// Gate A22-U224B
pullup(g47313);
assign #0.2  g47313 = rst ? 0 : ((0|WCH34_|CHWL13_) ? 1'b0 : 1'bz);
// Gate A22-U160B
pullup(g47201);
assign #0.2  g47201 = rst ? 0 : ((0|XT1_|XB3_|WCHG_) ? 1'b0 : 1'bz);
// Gate A22-U101B
pullup(g47101);
assign #0.2  g47101 = rst ? 1'bz : ((0|DKSTRT) ? 1'b0 : 1'bz);
// Gate A22-U155B
pullup(g47214);
assign #0.2  g47214 = rst ? 0 : ((0|XB4_|XT1_|WCHG_) ? 1'b0 : 1'bz);
// Gate A22-U232A
pullup(g47403);
assign #0.2  g47403 = rst ? 0 : ((0|CCH35|g47402) ? 1'b0 : 1'bz);
// Gate A22-U251A
pullup(g47432);
assign #0.2  g47432 = rst ? 0 : ((0|CCH35|g47431) ? 1'b0 : 1'bz);
// Gate A22-U233A
pullup(g47406);
assign #0.2  g47406 = rst ? 1'bz : ((0|g47405|g47407) ? 1'b0 : 1'bz);
// Gate A22-U114B
pullup(g47147);
assign #0.2  g47147 = rst ? 0 : ((0|g47145|g47150) ? 1'b0 : 1'bz);
// Gate A22-U116A
pullup(g47151);
assign #0.2  g47151 = rst ? 1'bz : ((0|g47145|g47148) ? 1'b0 : 1'bz);
// Gate A22-U114A
pullup(g47148);
assign #0.2  g47148 = rst ? 0 : ((0|g47147|g47151) ? 1'b0 : 1'bz);
// Gate A22-U204A
pullup(g47354);
assign #0.2  g47354 = rst ? 0 : ((0|CCH34|g47353) ? 1'b0 : 1'bz);
// Gate A22-U115B
pullup(g47150);
assign #0.2  g47150 = rst ? 1'bz : ((0|g47149) ? 1'b0 : 1'bz);
// Gate A22-U203B
pullup(g47352);
assign #0.2  g47352 = rst ? 0 : ((0|WCH34_|CHWL04_) ? 1'b0 : 1'bz);
// Gate A22-U239B
pullup(g47452);
assign #0.2  g47452 = rst ? 0 : ((0|CHWL06_|WCH35_) ? 1'b0 : 1'bz);
// Gate A22-U237B
pullup(g47456);
assign #0.2  g47456 = rst ? 0 : ((0|CHWL05_|WCH35_) ? 1'b0 : 1'bz);
// Gate A22-U145B
pullup(g47228);
assign #0.2  g47228 = rst ? 0 : ((0|DKCTR3|DKCTR2|DKCTR1) ? 1'b0 : 1'bz);
// Gate A22-U239A
pullup(g47453);
assign #0.2  g47453 = rst ? 1'bz : ((0|g47452|g47454) ? 1'b0 : 1'bz);
// Gate A22-U244B
pullup(g47446);
assign #0.2  g47446 = rst ? 0 : ((0|LOW7_|HIGH2_|g47444) ? 1'b0 : 1'bz);
// Gate A22-U242B
pullup(g47451);
assign #0.2  g47451 = rst ? 0 : ((0|HIGH3_|LOW0_|g47449) ? 1'b0 : 1'bz);
// Gate A22-U103B
pullup(RDOUT_);
assign #0.2  RDOUT_ = rst ? 1'bz : ((0|g47104|DLKCLR) ? 1'b0 : 1'bz);
// Gate A22-U247B
pullup(g47442);
assign #0.2  g47442 = rst ? 0 : ((0|LOW6_|HIGH2_|g47440) ? 1'b0 : 1'bz);
// Gate A22-U229A
pullup(g47302);
assign #0.2  g47302 = rst ? 1'bz : ((0|g47301|g47303) ? 1'b0 : 1'bz);
// Gate A22-U223A
pullup(g47315);
assign #0.2  g47315 = rst ? 0 : ((0|CCH34|g47314) ? 1'b0 : 1'bz);
// Gate A22-U229B
pullup(g47301);
assign #0.2  g47301 = rst ? 0 : ((0|WCH34_|PC15_) ? 1'b0 : 1'bz);
// Gate A22-U146A
pullup(BSYNC_);
assign #0.2  BSYNC_ = rst ? 1'bz : ((0|DKBSNC) ? 1'b0 : 1'bz);
// Gate A22-U258A
pullup(g47418);
assign #0.2  g47418 = rst ? 1'bz : ((0|g47417|g47419) ? 1'b0 : 1'bz);
// Gate A22-U257A
pullup(g47419);
assign #0.2  g47419 = rst ? 0 : ((0|CCH35|g47418) ? 1'b0 : 1'bz);
// Gate A22-U113A
pullup(g47145);
assign #0.2  g47145 = rst ? 0 : ((0|BSYNC_) ? 1'b0 : 1'bz);
// Gate A22-U211B
pullup(g47339);
assign #0.2  g47339 = rst ? 0 : ((0|WCH34_|CHWL07_) ? 1'b0 : 1'bz);
// Gate A22-U240A
pullup(g47454);
assign #0.2  g47454 = rst ? 0 : ((0|CCH35|g47453) ? 1'b0 : 1'bz);
// Gate A22-U124A
pullup(DKCTR3_);
assign #0.2  DKCTR3_ = rst ? 1'bz : ((0|g47129) ? 1'b0 : 1'bz);
// Gate A22-U132B A22-U133B A22-U220A A22-U220B A22-U241A A22-U241B A22-U254A A22-U254B A22-U207A A22-U207B
pullup(DATA_);
assign #0.2  DATA_ = rst ? 1'bz : ((0|g47251|g47250|WRD2B2|WRD1BP|WRD2B3|WRD1B1|g47312|g47316|g47320|g47325|g47329|g47333|g47451|g47446|g47442|g47455|g47459|g47412|g47429|g47438|g47433|g47416|g47420|g47425|g47351|g47355|g47359|g47342|g47347|g47338) ? 1'b0 : 1'bz);
// Gate A22-U250B
pullup(g47430);
assign #0.2  g47430 = rst ? 0 : ((0|CHWL11_|WCH35_) ? 1'b0 : 1'bz);
// Gate A22-U142B
pullup(g47234);
assign #0.2  g47234 = rst ? 0 : ((0|DKCTR1_|DKCTR2_|DKCTR3) ? 1'b0 : 1'bz);
// Gate A22-U129B
pullup(d16CNT);
assign #0.2  d16CNT = rst ? 0 : ((0|g47140|DKCTR5) ? 1'b0 : 1'bz);
// Gate A22-U251B
pullup(g47433);
assign #0.2  g47433 = rst ? 0 : ((0|LOW4_|HIGH2_|g47431) ? 1'b0 : 1'bz);
// Gate A22-U141B
pullup(g47236);
assign #0.2  g47236 = rst ? 0 : ((0|DKCTR3_|DKCTR2|DKCTR1) ? 1'b0 : 1'bz);
// Gate A22-U209A
pullup(g47345);
assign #0.2  g47345 = rst ? 1'bz : ((0|g47344|g47346) ? 1'b0 : 1'bz);
// Gate A22-U221A
pullup(g47318);
assign #0.2  g47318 = rst ? 1'bz : ((0|g47317|g47319) ? 1'b0 : 1'bz);
// Gate A22-U222A
pullup(g47319);
assign #0.2  g47319 = rst ? 0 : ((0|CCH34|g47318) ? 1'b0 : 1'bz);
// Gate A22-U108A
pullup(DKCTR1_);
assign #0.2  DKCTR1_ = rst ? 1'bz : ((0|g47113) ? 1'b0 : 1'bz);
// Gate A22-U149A A22-U150A A22-U150B
pullup(CCH14);
assign #0.2  CCH14 = rst ? 1'bz : ((0|g47219) ? 1'b0 : 1'bz);
// Gate A22-U218A
pullup(g47323);
assign #0.2  g47323 = rst ? 1'bz : ((0|g47322|g47324) ? 1'b0 : 1'bz);
// Gate A22-U138B
pullup(g47242);
assign #0.2  g47242 = rst ? 0 : ((0|DKCTR1_|DKCTR3_|DKCTR2_) ? 1'b0 : 1'bz);
// Gate A22-U208A
pullup(g47346);
assign #0.2  g47346 = rst ? 0 : ((0|CCH34|g47345) ? 1'b0 : 1'bz);
// Gate A22-U156A
pullup(g47206);
assign #0.2  g47206 = rst ? 0 : ((0|g47205|GOJAM) ? 1'b0 : 1'bz);
// Gate A22-U158B
pullup(g47205);
assign #0.2  g47205 = rst ? 0 : ((0|XB3_|XT1_|CCHG_) ? 1'b0 : 1'bz);
// Gate A22-U158A A22-U157A A22-U157B
pullup(CCH13);
assign #0.2  CCH13 = rst ? 1'bz : ((0|g47206) ? 1'b0 : 1'bz);
// Gate A22-U215B
pullup(g47333);
assign #0.2  g47333 = rst ? 0 : ((0|HIGH0_|LOW6_|g47331) ? 1'b0 : 1'bz);
// Gate A22-U204B
pullup(g47355);
assign #0.2  g47355 = rst ? 0 : ((0|HIGH1_|LOW3_|g47353) ? 1'b0 : 1'bz);
// Gate A22-U141A
pullup(LOW4_);
assign #0.2  LOW4_ = rst ? 1'bz : ((0|g47236) ? 1'b0 : 1'bz);
// Gate A22-U216B
pullup(g47326);
assign #0.2  g47326 = rst ? 0 : ((0|WCH34_|CHWL10_) ? 1'b0 : 1'bz);
// Gate A22-U216A
pullup(g47327);
assign #0.2  g47327 = rst ? 1'bz : ((0|g47326|g47328) ? 1'b0 : 1'bz);
// Gate A22-U217A
pullup(g47328);
assign #0.2  g47328 = rst ? 0 : ((0|CCH34|g47327) ? 1'b0 : 1'bz);
// Gate A22-U138A
pullup(LOW7_);
assign #0.2  LOW7_ = rst ? 1'bz : ((0|g47242) ? 1'b0 : 1'bz);
// Gate A22-U234B
pullup(WRD2B3);
assign #0.2  WRD2B3 = rst ? 0 : ((0|LOW4_|HIGH3_|g47406) ? 1'b0 : 1'bz);
// Gate A22-U232B
pullup(WRD2B2);
assign #0.2  WRD2B2 = rst ? 0 : ((0|LOW5_|HIGH3_|g47402) ? 1'b0 : 1'bz);
// Gate A22-U245A
pullup(g47444);
assign #0.2  g47444 = rst ? 1'bz : ((0|g47443|g47445) ? 1'b0 : 1'bz);
// Gate A22-U224A
pullup(g47314);
assign #0.2  g47314 = rst ? 1'bz : ((0|g47313|g47315) ? 1'b0 : 1'bz);
// Gate A22-U243A
pullup(g47449);
assign #0.2  g47449 = rst ? 1'bz : ((0|g47448|g47450) ? 1'b0 : 1'bz);
// Gate A22-U256B
pullup(g47422);
assign #0.2  g47422 = rst ? 0 : ((0|CHWL13_|WCH35_) ? 1'b0 : 1'bz);
// Gate A22-U226B
pullup(g47312);
assign #0.2  g47312 = rst ? 0 : ((0|HIGH1_|LOW5_|g47310) ? 1'b0 : 1'bz);
// Gate A22-U112A
pullup(DKCTR2_);
assign #0.2  DKCTR2_ = rst ? 0 : ((0|g47121) ? 1'b0 : 1'bz);
// Gate A22-U214A
pullup(g47331);
assign #0.2  g47331 = rst ? 1'bz : ((0|g47330|g47332) ? 1'b0 : 1'bz);
// Gate A22-U215A
pullup(g47332);
assign #0.2  g47332 = rst ? 0 : ((0|CCH34|g47331) ? 1'b0 : 1'bz);
// Gate A22-U223B
pullup(g47316);
assign #0.2  g47316 = rst ? 0 : ((0|HIGH0_|LOW2_|g47314) ? 1'b0 : 1'bz);
// Gate A22-U134A
pullup(g47251);
assign #0.2  g47251 = rst ? 0 : ((0|LOW1_|g47248|HIGH0_) ? 1'b0 : 1'bz);
// Gate A22-U134B
pullup(g47250);
assign #0.2  g47250 = rst ? 0 : ((0|LOW0_|HIGH0_|g47246) ? 1'b0 : 1'bz);
// Gate A22-U242A
pullup(g47450);
assign #0.2  g47450 = rst ? 0 : ((0|g47449|CCH35) ? 1'b0 : 1'bz);
// Gate A22-U222B
pullup(g47320);
assign #0.2  g47320 = rst ? 0 : ((0|HIGH0_|LOW3_|g47318) ? 1'b0 : 1'bz);
// Gate A22-U247A
pullup(g47441);
assign #0.2  g47441 = rst ? 0 : ((0|CCH35|g47440) ? 1'b0 : 1'bz);
// Gate A22-U219B
pullup(g47325);
assign #0.2  g47325 = rst ? 0 : ((0|HIGH0_|LOW4_|g47323) ? 1'b0 : 1'bz);
// Gate A22-U153A
pullup(g47219);
assign #0.2  g47219 = rst ? 0 : ((0|GOJAM|g47218) ? 1'b0 : 1'bz);
// Gate A22-U212B
pullup(g47338);
assign #0.2  g47338 = rst ? 0 : ((0|HIGH0_|LOW7_|g47336) ? 1'b0 : 1'bz);
// Gate A22-U243B
pullup(g47448);
assign #0.2  g47448 = rst ? 0 : ((0|CHWL07_|WCH35_) ? 1'b0 : 1'bz);
// Gate A22-U102B
pullup(g47104);
assign #0.2  g47104 = rst ? 0 : ((0|END|RDOUT_) ? 1'b0 : 1'bz);
// Gate A22-U135B
pullup(g47247);
assign #0.2  g47247 = rst ? 0 : ((0|g47246|CCH34) ? 1'b0 : 1'bz);
// Gate A22-U123B
pullup(g47130);
assign #0.2  g47130 = rst ? 1'bz : ((0|g47127|DLKCLR|g47129) ? 1'b0 : 1'bz);
// Gate A22-U143A
pullup(LOW2_);
assign #0.2  LOW2_ = rst ? 0 : ((0|g47232) ? 1'b0 : 1'bz);
// Gate A22-U135A
pullup(g47249);
assign #0.2  g47249 = rst ? 0 : ((0|g47248|CCH34) ? 1'b0 : 1'bz);
// Gate A22-U123A
pullup(g47129);
assign #0.2  g47129 = rst ? 0 : ((0|g47130|g47126) ? 1'b0 : 1'bz);
// Gate A22-U153B
pullup(g47218);
assign #0.2  g47218 = rst ? 0 : ((0|XB4_|CCHG_|XT1_) ? 1'b0 : 1'bz);
// Gate A22-U139B
pullup(g47240);
assign #0.2  g47240 = rst ? 0 : ((0|DKCTR1|DKCTR3_|DKCTR2_) ? 1'b0 : 1'bz);
// Gate A22-U154A A22-U154B A22-U155A
pullup(RCH13_);
assign #0.2  RCH13_ = rst ? 1'bz : ((0|g47210) ? 1'b0 : 1'bz);
// Gate A22-U255B
pullup(g47425);
assign #0.2  g47425 = rst ? 0 : ((0|LOW2_|HIGH2_|g47423) ? 1'b0 : 1'bz);
// Gate A22-U130B
pullup(DKCTR5_);
assign #0.2  DKCTR5_ = rst ? 1'bz : ((0|DLKCLR|g47141|DKCTR5) ? 1'b0 : 1'bz);
// Gate A22-U257B
pullup(g47420);
assign #0.2  g47420 = rst ? 0 : ((0|LOW1_|HIGH2_|g47418) ? 1'b0 : 1'bz);
// Gate A22-U208B
pullup(g47347);
assign #0.2  g47347 = rst ? 0 : ((0|HIGH1_|LOW1_|g47345) ? 1'b0 : 1'bz);
// Gate A22-U149B A22-U148A A22-U148B
pullup(RCH14_);
assign #0.2  RCH14_ = rst ? 1'bz : ((0|g47223) ? 1'b0 : 1'bz);
// Gate A22-U115A
pullup(g47149);
assign #0.2  g47149 = rst ? 0 : ((0|g47151) ? 1'b0 : 1'bz);
// Gate A22-U116B
pullup(g47160);
assign #0.2  g47160 = rst ? 1'bz : ((0) ? 1'b0 : 1'bz);
// Gate A22-U104A
pullup(g47108);
assign #0.2  g47108 = rst ? 0 : ((0|g47107) ? 1'b0 : 1'bz);
// Gate A22-U104B
pullup(g47107);
assign #0.2  g47107 = rst ? 1'bz : ((0|ADVCTR|DLKCLR) ? 1'b0 : 1'bz);
// Gate A22-U213A
pullup(g47336);
assign #0.2  g47336 = rst ? 1'bz : ((0|g47335|g47337) ? 1'b0 : 1'bz);
// Gate A22-U212A
pullup(g47337);
assign #0.2  g47337 = rst ? 0 : ((0|g47336|CCH34) ? 1'b0 : 1'bz);
// Gate A22-U253A
pullup(g47428);
assign #0.2  g47428 = rst ? 0 : ((0|CCH35|g47427) ? 1'b0 : 1'bz);
// Gate A22-U252B
pullup(g47426);
assign #0.2  g47426 = rst ? 0 : ((0|CHWL12_|WCH35_) ? 1'b0 : 1'bz);
// Gate A22-U252A
pullup(g47427);
assign #0.2  g47427 = rst ? 1'bz : ((0|g47426|g47428) ? 1'b0 : 1'bz);
// Gate A22-U217B
pullup(g47329);
assign #0.2  g47329 = rst ? 0 : ((0|HIGH0_|LOW5_|g47327) ? 1'b0 : 1'bz);
// Gate A22-U110B
pullup(g47117);
assign #0.2  g47117 = rst ? 0 : ((0|g47118|g47121) ? 1'b0 : 1'bz);
// Gate A22-U240B
pullup(g47455);
assign #0.2  g47455 = rst ? 0 : ((0|LOW1_|HIGH3_|g47453) ? 1'b0 : 1'bz);
// Gate A22-U109A
pullup(g47119);
assign #0.2  g47119 = rst ? 1'bz : ((0|g47118|g47120|g47112) ? 1'b0 : 1'bz);
// Gate A22-U109B
pullup(g47118);
assign #0.2  g47118 = rst ? 0 : ((0|g47119|g47112|g47117) ? 1'b0 : 1'bz);
// Gate A22-U110A
pullup(g47120);
assign #0.2  g47120 = rst ? 0 : ((0|g47122|g47119) ? 1'b0 : 1'bz);
// Gate A22-U152A A22-U152B A22-U151A
pullup(WCH14_);
assign #0.2  WCH14_ = rst ? 1'bz : ((0|g47214) ? 1'b0 : 1'bz);
// Gate A22-U230A
pullup(g47303);
assign #0.2  g47303 = rst ? 0 : ((0|CCH34|g47302) ? 1'b0 : 1'bz);
// Gate A22-U106B
pullup(d1CNT);
assign #0.2  d1CNT = rst ? 0 : ((0|g47110|g47113) ? 1'b0 : 1'bz);
// Gate A22-U156B
pullup(g47210);
assign #0.2  g47210 = rst ? 0 : ((0|XT1_|XB3_) ? 1'b0 : 1'bz);
// Gate A22-U246B
pullup(g47439);
assign #0.2  g47439 = rst ? 0 : ((0|CHWL09_|WCH35_) ? 1'b0 : 1'bz);
// Gate A22-U214B
pullup(g47330);
assign #0.2  g47330 = rst ? 0 : ((0|CHWL09_|WCH34_) ? 1'b0 : 1'bz);
// Gate A22-U127B
pullup(DKCTR4_);
assign #0.2  DKCTR4_ = rst ? 1'bz : ((0|g47135|DLKCLR|DKCTR4) ? 1'b0 : 1'bz);
// Gate A22-U119B
pullup(g47156);
assign #0.2  g47156 = rst ? 1'bz : ((0|g47155|g47157) ? 1'b0 : 1'bz);
// Gate A22-U119A
pullup(g47157);
assign #0.2  g47157 = rst ? 0 : ((0|g47156|CCH13) ? 1'b0 : 1'bz);
// Gate A22-U255A
pullup(g47424);
assign #0.2  g47424 = rst ? 0 : ((0|CCH35|g47423) ? 1'b0 : 1'bz);
// Gate A22-U117B
pullup(g47155);
assign #0.2  g47155 = rst ? 0 : ((0|WCH13_|CHWL07_) ? 1'b0 : 1'bz);
// Gate A22-U203A
pullup(g47353);
assign #0.2  g47353 = rst ? 1'bz : ((0|g47352|g47354) ? 1'b0 : 1'bz);
// Gate A22-U226A
pullup(g47311);
assign #0.2  g47311 = rst ? 0 : ((0|CCH34|g47310) ? 1'b0 : 1'bz);
// Gate A22-U233B
pullup(g47405);
assign #0.2  g47405 = rst ? 0 : ((0|CHWL03_|WCH35_) ? 1'b0 : 1'bz);
// Gate A22-U234A
pullup(g47407);
assign #0.2  g47407 = rst ? 0 : ((0|CCH35|g47406) ? 1'b0 : 1'bz);
// Gate A22-U101A A22-U102A
pullup(DLKCLR);
assign #0.2  DLKCLR = rst ? 0 : ((0|g47101) ? 1'b0 : 1'bz);
// Gate A22-U256A
pullup(g47423);
assign #0.2  g47423 = rst ? 1'bz : ((0|g47422|g47424) ? 1'b0 : 1'bz);
// Gate A22-U202A
pullup(g47358);
assign #0.2  g47358 = rst ? 0 : ((0|CCH34|g47357) ? 1'b0 : 1'bz);
// Gate A22-U201B
pullup(g47356);
assign #0.2  g47356 = rst ? 0 : ((0|WCH34_|CHWL03_) ? 1'b0 : 1'bz);
// Gate A22-U201A
pullup(g47357);
assign #0.2  g47357 = rst ? 1'bz : ((0|g47356|g47358) ? 1'b0 : 1'bz);
// Gate A22-U235B
pullup(g47409);
assign #0.2  g47409 = rst ? 0 : ((0|CHWL04_|WCH35_) ? 1'b0 : 1'bz);
// Gate A22-U236A
pullup(g47411);
assign #0.2  g47411 = rst ? 0 : ((0|CCH35|g47410) ? 1'b0 : 1'bz);
// Gate A22-U235A
pullup(g47410);
assign #0.2  g47410 = rst ? 1'bz : ((0|g47409|g47411) ? 1'b0 : 1'bz);
// Gate A22-U111B
pullup(g47122);
assign #0.2  g47122 = rst ? 0 : ((0|g47119|DLKCLR|g47121) ? 1'b0 : 1'bz);
// Gate A22-U260B
pullup(g47413);
assign #0.2  g47413 = rst ? 0 : ((0|CHWL16_|WCH35_) ? 1'b0 : 1'bz);
// Gate A22-U248B
pullup(g47435);
assign #0.2  g47435 = rst ? 0 : ((0|CHWL10_|WCH35_) ? 1'b0 : 1'bz);
// Gate A22-U249A
pullup(g47437);
assign #0.2  g47437 = rst ? 0 : ((0|CCH35|g47436) ? 1'b0 : 1'bz);
// Gate A22-U211A
pullup(g47340);
assign #0.2  g47340 = rst ? 1'bz : ((0|g47339|g47341) ? 1'b0 : 1'bz);
// Gate A22-U111A
pullup(g47121);
assign #0.2  g47121 = rst ? 1'bz : ((0|g47122|g47118) ? 1'b0 : 1'bz);
// Gate A22-U140A
pullup(LOW5_);
assign #0.2  LOW5_ = rst ? 1'bz : ((0|g47238) ? 1'b0 : 1'bz);
// Gate A22-U144B
pullup(g47230);
assign #0.2  g47230 = rst ? 0 : ((0|DKCTR1_|DKCTR3|DKCTR2) ? 1'b0 : 1'bz);
// Gate A22-U213B
pullup(g47335);
assign #0.2  g47335 = rst ? 0 : ((0|WCH34_|CHWL08_) ? 1'b0 : 1'bz);
// Gate A22-U145A
pullup(LOW0_);
assign #0.2  LOW0_ = rst ? 1'bz : ((0|g47228) ? 1'b0 : 1'bz);
// Gate A22-U143B
pullup(g47232);
assign #0.2  g47232 = rst ? 1'bz : ((0|DKCTR2_|DKCTR1|DKCTR3) ? 1'b0 : 1'bz);
// Gate A22-U144A
pullup(LOW1_);
assign #0.2  LOW1_ = rst ? 1'bz : ((0|g47230) ? 1'b0 : 1'bz);
// Gate A22-U227A
pullup(g47306);
assign #0.2  g47306 = rst ? 1'bz : ((0|g47305|g47307) ? 1'b0 : 1'bz);
// Gate A22-U113B
pullup(F14H);
assign #0.2  F14H = rst ? 0 : ((0|FS14|FS13_|F12B_) ? 1'b0 : 1'bz);
// Gate A22-U245B
pullup(g47443);
assign #0.2  g47443 = rst ? 0 : ((0|CHWL08_|WCH35_) ? 1'b0 : 1'bz);
// Gate A22-U117A
pullup(F12B_);
assign #0.2  F12B_ = rst ? 1'bz : ((0|F12B) ? 1'b0 : 1'bz);
// Gate A22-U238B
pullup(g47459);
assign #0.2  g47459 = rst ? 0 : ((0|LOW2_|HIGH3_|g47457) ? 1'b0 : 1'bz);
// Gate A22-U230B
pullup(WRD1BP);
assign #0.2  WRD1BP = rst ? 0 : ((0|LOW7_|HIGH1_|g47302) ? 1'b0 : 1'bz);
// Gate A22-U120A
pullup(CH1307);
assign #0.2  CH1307 = rst ? 0 : ((0|g47156|RCH13_) ? 1'b0 : 1'bz);
// Gate A22-U249B
pullup(g47438);
assign #0.2  g47438 = rst ? 0 : ((0|LOW5_|HIGH2_|g47436) ? 1'b0 : 1'bz);
// Gate A22-U147B
pullup(FS13_);
assign #0.2  FS13_ = rst ? 1'bz : ((0|FS13) ? 1'b0 : 1'bz);
// Gate A22-U259A
pullup(g47415);
assign #0.2  g47415 = rst ? 0 : ((0|CCH35|g47614) ? 1'b0 : 1'bz);
// Gate A22-U260A
pullup(g47614);
assign #0.2  g47614 = rst ? 1'bz : ((0|g47413|g47415) ? 1'b0 : 1'bz);
// Gate A22-U140B
pullup(g47238);
assign #0.2  g47238 = rst ? 0 : ((0|DKCTR1_|DKCTR3_|DKCTR2) ? 1'b0 : 1'bz);
// Gate A22-U202B
pullup(g47359);
assign #0.2  g47359 = rst ? 0 : ((0|LOW4_|HIGH1_|g47357) ? 1'b0 : 1'bz);
// Gate A22-U122B
pullup(g47125);
assign #0.2  g47125 = rst ? 0 : ((0|g47126|g47129) ? 1'b0 : 1'bz);
// Gate A22-U244A
pullup(g47445);
assign #0.2  g47445 = rst ? 0 : ((0|CCH35|g47444) ? 1'b0 : 1'bz);
// Gate A22-U142A
pullup(LOW3_);
assign #0.2  LOW3_ = rst ? 1'bz : ((0|g47234) ? 1'b0 : 1'bz);
// Gate A22-U228B
pullup(WRD1B1);
assign #0.2  WRD1B1 = rst ? 0 : ((0|HIGH1_|LOW6_|g47306) ? 1'b0 : 1'bz);
// Gate A22-U121B
pullup(g47126);
assign #0.2  g47126 = rst ? 1'bz : ((0|g47127|g47120|g47125) ? 1'b0 : 1'bz);
// Gate A22-U122A
pullup(g47128);
assign #0.2  g47128 = rst ? 0 : ((0|g47130|g47127) ? 1'b0 : 1'bz);
// Gate A22-U121A
pullup(g47127);
assign #0.2  g47127 = rst ? 0 : ((0|g47126|g47128|g47120) ? 1'b0 : 1'bz);
// Gate A22-U221B
pullup(g47317);
assign #0.2  g47317 = rst ? 0 : ((0|WCH34_|CHWL12_) ? 1'b0 : 1'bz);
// Gate A22-U218B
pullup(g47322);
assign #0.2  g47322 = rst ? 0 : ((0|WCH34_|CHWL11_) ? 1'b0 : 1'bz);
// Gate A22-U118A
pullup(g47153);
assign #0.2  g47153 = rst ? 0 : ((0|DLKCLR|WDORDR) ? 1'b0 : 1'bz);
// Gate A22-U107B
pullup(g47114);
assign #0.2  g47114 = rst ? 1'bz : ((0|g47111|DLKCLR|g47113) ? 1'b0 : 1'bz);
// Gate A22-U258B
pullup(g47417);
assign #0.2  g47417 = rst ? 0 : ((0|CHWL14_|WCH35_) ? 1'b0 : 1'bz);
// Gate A22-U225A
pullup(g47310);
assign #0.2  g47310 = rst ? 1'bz : ((0|g47309|g47311) ? 1'b0 : 1'bz);
// Gate A22-U128B
pullup(g47140);
assign #0.2  g47140 = rst ? 1'bz : ((0|g47141|g47136|d16CNT) ? 1'b0 : 1'bz);
// Gate A22-U128A
pullup(g47141);
assign #0.2  g47141 = rst ? 0 : ((0|g47140|d32CNT|g47136) ? 1'b0 : 1'bz);
// Gate A22-U225B
pullup(g47309);
assign #0.2  g47309 = rst ? 0 : ((0|WCH34_|CHWL02_) ? 1'b0 : 1'bz);
// Gate A22-U107A
pullup(g47113);
assign #0.2  g47113 = rst ? 0 : ((0|g47114|g47110) ? 1'b0 : 1'bz);
// Gate A22-U228A
pullup(g47307);
assign #0.2  g47307 = rst ? 0 : ((0|CCH34|g47306) ? 1'b0 : 1'bz);
// Gate A22-U227B
pullup(g47305);
assign #0.2  g47305 = rst ? 0 : ((0|CHWL01_|WCH34_) ? 1'b0 : 1'bz);
// Gate A22-U132A
pullup(g47254);
assign #0.2  g47254 = rst ? 0 : ((0|DATA_|WDORDR) ? 1'b0 : 1'bz);
// Gate A22-U206B
pullup(g47351);
assign #0.2  g47351 = rst ? 0 : ((0|HIGH1_|LOW2_|g47349) ? 1'b0 : 1'bz);
// Gate A22-U137A
pullup(g47245);
assign #0.2  g47245 = rst ? 0 : ((0|CHWL14_|WCH34_) ? 1'b0 : 1'bz);
// Gate A22-U129A
pullup(d32CNT);
assign #0.2  d32CNT = rst ? 0 : ((0|DKCTR5_|g47141) ? 1'b0 : 1'bz);
// Gate A22-U206A
pullup(g47350);
assign #0.2  g47350 = rst ? 0 : ((0|CCH34|g47349) ? 1'b0 : 1'bz);
// Gate A22-U205B
pullup(g47348);
assign #0.2  g47348 = rst ? 0 : ((0|WCH34_|CHWL05_) ? 1'b0 : 1'bz);
// Gate A22-U205A
pullup(g47349);
assign #0.2  g47349 = rst ? 1'bz : ((0|g47348|g47350) ? 1'b0 : 1'bz);
// Gate A22-U253B
pullup(g47429);
assign #0.2  g47429 = rst ? 0 : ((0|LOW3_|HIGH2_|g47427) ? 1'b0 : 1'bz);
// Gate A22-U137B
pullup(g47244);
assign #0.2  g47244 = rst ? 0 : ((0|CHWL16_|WCH34_) ? 1'b0 : 1'bz);
// End of NOR gates

endmodule