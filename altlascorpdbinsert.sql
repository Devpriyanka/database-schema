-- Insert values into the atlasdb tables
--inserting level data

--inserting level data
insert Into Level_Dtl_Tbl values (5,'owner');		
insert Into Level_Dtl_Tbl values (4,'Directors');		
insert Into Level_Dtl_Tbl values (3,'Managers');		
insert Into Level_Dtl_Tbl values (2,'Senior Associate');		
insert Into Level_Dtl_Tbl values (1,'Junior Associate');		
insert Into Level_Dtl_Tbl values (99,'Maintenece Staff');		


-- Entering job detail data
Insert Into Job_Dtl_Tbl  Values(500,5,'Company Owner','YES','YES','YES','NO');
Insert Into Job_Dtl_Tbl  Values(401,4,'HR Director','YES','YES','YES','NO');
Insert Into Job_Dtl_Tbl  Values(402,4,'Information System Director','YES','YES','YES','NO');
Insert Into Job_Dtl_Tbl  Values(403,4,'Operation Director','YES','YES','YES','NO');
Insert Into Job_Dtl_Tbl  Values(301,3,'HR Manager','YES','YES','YES','NO');
Insert Into Job_Dtl_Tbl  Values(302,3,'IT Manager','YES','YES','YES','NO');
Insert Into Job_Dtl_Tbl  Values(303,3,'Operation Manager','YES','YES','YES','NO');
Insert Into Job_Dtl_Tbl  Values(201,2,'Senior Assoc in HR','YES','YES','YES','NO');
Insert Into Job_Dtl_Tbl  Values(202,2,'Senior Assoc in IT','YES','YES','YES','NO');
Insert Into Job_Dtl_Tbl  Values(203,2,'Senior Assoc in Operation','YES','YES','YES','NO');
Insert Into Job_Dtl_Tbl  Values(101,1,'Junior Assoc in HR','NO','NO','YES','YES');
Insert Into Job_Dtl_Tbl  Values(102,1,'Junior Assoc in IT','YES','NO','YES','YES');
Insert Into Job_Dtl_Tbl  Values(103,1,'Junior Assoc in OP','NO','NO','YES','YES');
Insert Into Job_Dtl_Tbl  Values(991,99,'Front_Desk','NO','NO','NO','YES');
Insert Into Job_Dtl_Tbl  Values(992,99,'Security','NO','YES','NO','YES');

--Inserting employee data
--change is ot allowed



INSERT INTO EMP_TBL
VAlues
(5001,'Amit Kalia',to_date('11/05/1977', 'MM/DD/YYYY'),'MALE','12355 Landale St, Studio City, CA, 91604','015-252-8487',401,to_date('04/26/2005' ,'MM/DD/YYYY')),
(5003,'Priyanka Prasad',to_date('05/14/1987', 'MM/DD/YYYY'),'FEMALE','642 Br, North Branch, MN, 55056','836-086-1810',500,to_date('10/26/2015' ,'MM/DD/YYYY')),
(5005,'Jhon Dey',to_date('04/15/1991', 'MM/DD/YYYY'),'MALE','12356 Landale St, Studio City, CA, 91604','798-969-0865',301,to_date('06/05/2010' ,'MM/DD/YYYY')),
(5007,'Diya Sen',to_date('02/04/1973', 'MM/DD/YYYY'),'FEMALE','501 Division St #A, Boonton, NJ, 07005','684-042-4654',402,to_date('10/17/2013' ,'MM/DD/YYYY')),
(5009,'Mani Raj',to_date('10/30/1978', 'MM/DD/YYYY'),'MALE','914 Main St, Bradley, ME, 04411 ','048-660-3345',301,to_date('04/13/2017' ,'MM/DD/YYYY')),
(5011,'Phani Kumar',to_date('03/21/1992', 'MM/DD/YYYY'),'MALE','913 Main St, Bradley, ME, 04411 ','657-190-8261',403,to_date('08/24/2016' ,'MM/DD/YYYY')),
(5013,'Avinash Prasad',to_date('04/04/1994', 'MM/DD/YYYY'),'MALE','912 Main St, Bradley, ME, 04411 ','959-504-6205',301,to_date('03/29/2013' ,'MM/DD/YYYY')),
(5015,'Emily Sara',to_date('04/03/1978', 'MM/DD/YYYY'),'FEMALE','911Main St, Bradley, ME, 04411 ','926-503-8617',301,to_date('11/03/2013' ,'MM/DD/YYYY')),
(5017,'Mark Faizer',to_date('06/04/1985', 'MM/DD/YYYY'),'MALE','913 Main St, Bradley, ME, 04411 ','954-047-5733',201,to_date('10/14/2012' ,'MM/DD/YYYY')),
(5019,'Paul Rayan',to_date('12/07/1980', 'MM/DD/YYYY'),'MALE','999Landale St, Studio City, CA, 91604','892-869-5331',991,to_date('10/05/2013' ,'MM/DD/YYYY')),
(5021,'Jimi Rai',to_date('04/05/1973', 'MM/DD/YYYY'),'MALE','998Landale St, Studio City, CA, 91605','372-821-4581',992,to_date('03/22/2017' ,'MM/DD/YYYY')),
(5023,'Paul Detrich',to_date('10/10/1981', 'MM/DD/YYYY'),'MALE','997Landale St, Studio City, CA, 91606','182-305-1132',991,to_date('08/09/2013' ,'MM/DD/YYYY')),
(5025,'Bal Dail',to_date('01/10/1994', 'MM/DD/YYYY'),'MALE','996Landale St, Studio City, CA, 91607','471-546-1542',992,to_date('03/16/2005' ,'MM/DD/YYYY')),
(5027,'Cristy Corner',to_date('12/10/1976', 'MM/DD/YYYY'),'FEMALE','995Landale St, Studio City, CA, 91608','506-328-3254',201,to_date('05/04/2007' ,'MM/DD/YYYY')),
(5029,'Mady more',to_date('09/30/1986', 'MM/DD/YYYY'),'FEMALE','994Landale St, Studio City, CA, 91609','227-835-5184',202,to_date('01/05/2007' ,'MM/DD/YYYY')),
(5031,'Avinash Kumar',to_date('05/11/1970', 'MM/DD/YYYY'),'MALE','993Landale St, Studio City, CA, 91610','787-524-8702',203,to_date('04/20/2009' ,'MM/DD/YYYY')),
(5033,'Parul Shah',to_date('07/16/1992', 'MM/DD/YYYY'),'FEMALE','992Landale St, Studio City, CA, 91611','974-153-0528',101,to_date('03/12/2007' ,'MM/DD/YYYY')),
(5035,'Tamul Raj',to_date('01/31/1970', 'MM/DD/YYYY'),'MALE','991Landale St, Studio City, CA, 91612','125-318-0388',102,to_date('04/19/2017' ,'MM/DD/YYYY')),
(5037,'Kamal Hasn',to_date('01/08/1991', 'MM/DD/YYYY'),'MALE','990Landale St, Studio City, CA, 91613','926-370-4448',103,to_date('09/01/2011' ,'MM/DD/YYYY')),
(5039,'Riys Sen',to_date('03/26/1975', 'MM/DD/YYYY'),'FEMALE','989Landale St, Studio City, CA, 91614','882-232-7270',203,to_date('11/22/2016' ,'MM/DD/YYYY')),
(5041,'Palak Sen',to_date('03/20/1987', 'MM/DD/YYYY'),'FEMALE','988Landale St, Studio City, CA, 91615','716-162-2827',201,to_date('05/08/2006' ,'MM/DD/YYYY')),
(5043,'Martha Kindle',to_date('08/05/1988', 'MM/DD/YYYY'),'FEMALE','987Landale St, Studio City, CA, 91616','462-207-4305',103,to_date('02/18/2007' ,'MM/DD/YYYY')),
(5045,'Boris Makarovsiky',to_date('11/21/1972', 'MM/DD/YYYY'),'MALE','986Landale St, Studio City, CA, 91617','512-710-5309',203,to_date('07/05/2010' ,'MM/DD/YYYY')),
(5047,'Amamda Sturdbridge',to_date('07/24/1984', 'MM/DD/YYYY'),'MALE','985Landale St, Studio City, CA, 91618','589-030-3217',303,to_date('04/13/2015' ,'MM/DD/YYYY')),
(5049,'Matt Lewis',to_date('03/11/1975', 'MM/DD/YYYY'),'MALE','984Landale St, Studio City, CA, 91619','631-190-0787',301,to_date('12/23/2006' ,'MM/DD/YYYY')),
(5051,'Rakesh Sen',to_date('05/04/1976', 'MM/DD/YYYY'),'MALE','983Main St, Bradley, ME, 04411 ','188-698-5088',302,to_date('03/30/2017' ,'MM/DD/YYYY')),
(5053,'Jay Kumar',to_date('02/13/1981', 'MM/DD/YYYY'),'MALE','982Main St, Bradley, ME, 04411 ','091-755-5810',202,to_date('01/13/2007' ,'MM/DD/YYYY')),
(5055,'Abigail',to_date('12/25/1971', 'MM/DD/YYYY'),'MALE','981Main St, Bradley, ME, 04411 ','780-089-3433',101,to_date('12/05/2012' ,'MM/DD/YYYY')),
(5057,'Victoria',to_date('01/17/1975', 'MM/DD/YYYY'),'FEMALE','980Main St, Bradley, ME, 04411 ','222-812-4313',991,to_date('02/11/2010' ,'MM/DD/YYYY')),
(5059,'Adriana',to_date('02/21/1990', 'MM/DD/YYYY'),'FEMALE','979Main St, Bradley, ME, 04411 ','197-634-7107',992,to_date('07/08/2015' ,'MM/DD/YYYY')),
(5061,'Aekerman',to_date('02/09/1986', 'MM/DD/YYYY'),'FEMALE','978Main St, Bradley, ME, 04411 ','542-524-8864',991,to_date('04/13/2017' ,'MM/DD/YYYY')),
(5063,'Alwyn',to_date('03/02/1982', 'MM/DD/YYYY'),'FEMALE','977Main St, Bradley, ME, 04411 ','061-775-2487',992,to_date('12/25/2010' ,'MM/DD/YYYY')),
(5065,'Patricia',to_date('07/30/1971', 'MM/DD/YYYY'),'FEMALE','976Main St, Bradley, ME, 04411 ','352-566-9119',201,to_date('03/29/2013' ,'MM/DD/YYYY')),
(5067,'Philip',to_date('11/01/1979', 'MM/DD/YYYY'),'MALE','975Main St, Bradley, ME, 04411 ','518-811-8438',201,to_date('01/16/2015' ,'MM/DD/YYYY')),
(5069,'Peterson',to_date('09/23/1978', 'MM/DD/YYYY'),'MALE','974Main St, Bradley, ME, 04411 ','951-883-9780',303,to_date('04/23/2005' ,'MM/DD/YYYY')),
(5071,'Seaward',to_date('10/24/1981', 'MM/DD/YYYY'),'MALE','973Main St, Bradley, ME, 04411 ','993-196-3999',303,to_date('03/11/2006' ,'MM/DD/YYYY')),
(5073,'Sebastian',to_date('12/11/1980', 'MM/DD/YYYY'),'MALE','972Main St, Bradley, ME, 04411 ','004-290-1858',301,to_date('08/05/2007' ,'MM/DD/YYYY'));
--EMployee SSN INSERT

INSERT into Emp_SSN_Tbl values ('093vlL899',5001);
INSERT into Emp_SSN_Tbl values ('093iWK899',5003);
INSERT into Emp_SSN_Tbl values ('093bUu899',5005);
INSERT into Emp_SSN_Tbl values ('093jMP899',5007);
INSERT into Emp_SSN_Tbl values ('093upH899',5009);
INSERT into Emp_SSN_Tbl values ('0938pT899',5011);
INSERT into Emp_SSN_Tbl values ('0932bp899',5013);
INSERT into Emp_SSN_Tbl values ('093pBt899',5015);
INSERT into Emp_SSN_Tbl values ('093WzX899',5017);
INSERT into Emp_SSN_Tbl values ('093l7b899',5019);
INSERT into Emp_SSN_Tbl values ('783nGs569',5021);
INSERT into Emp_SSN_Tbl values ('78374A569',5023);
INSERT into Emp_SSN_Tbl values ('783bnr569',5025);
INSERT into Emp_SSN_Tbl values ('783KTZ569',5027);
INSERT into Emp_SSN_Tbl values ('78324j569',5029);
INSERT into Emp_SSN_Tbl values ('783lJQ569',5031);
INSERT into Emp_SSN_Tbl values ('783hgc569',5033);
INSERT into Emp_SSN_Tbl values ('783Ezn569',5035);
INSERT into Emp_SSN_Tbl values ('783Q5s569',5037);
INSERT into Emp_SSN_Tbl values ('783jPs569',5039);
INSERT into Emp_SSN_Tbl values ('67wjha432',5041);
INSERT into Emp_SSN_Tbl values ('67h2OB432',5043);
INSERT into Emp_SSN_Tbl values ('67pLuJ432',5045);
INSERT into Emp_SSN_Tbl values ('67jq9y432',5047);
INSERT into Emp_SSN_Tbl values ('67ybES432',5049);
INSERT into Emp_SSN_Tbl values ('67zaIS432',5051);
INSERT into Emp_SSN_Tbl values ('67D7Fp432',5053);
INSERT into Emp_SSN_Tbl values ('67AubY432',5055);
INSERT into Emp_SSN_Tbl values ('67Ebb7432',5057);
INSERT into Emp_SSN_Tbl values ('67Ar0n432',5059);
INSERT into Emp_SSN_Tbl values ('67206x432',5061);
INSERT into Emp_SSN_Tbl values ('67o5Pb432',5063);
INSERT into Emp_SSN_Tbl values ('67xvzS432',5065);
INSERT into Emp_SSN_Tbl values ('673SMo432',5067);
INSERT into Emp_SSN_Tbl values ('67cuze432',5069);
INSERT into Emp_SSN_Tbl values ('67R3Cw432',5071);
INSERT into Emp_SSN_Tbl values ('67Y1QM432',5073);


--Insert into email table 
INSERT into Emp_Email_Tbl values (5001,'KaliaAmit_Kalia@atlas.com');
INSERT into Emp_Email_Tbl values (5003,'PrasadPriyanka_Prasad@atlas.com');
INSERT into Emp_Email_Tbl values (5005,'DeyJhon_Dey@atlas.com');
INSERT into Emp_Email_Tbl values (5007,'SenDiya_Sen@atlas.com');
INSERT into Emp_Email_Tbl values (5009,'RajMani_Raj@atlas.com');
INSERT into Emp_Email_Tbl values (5011,'KumarPhani_Kumar@atlas.com');
INSERT into Emp_Email_Tbl values (5013,'PrasadAvinash_Prasad@atlas.com');
INSERT into Emp_Email_Tbl values (5015,'SaraEmily_Sara@atlas.com');
INSERT into Emp_Email_Tbl values (5017,'FaizerMark_Faizer@atlas.com');
INSERT into Emp_Email_Tbl values (5019,'RayanPaul_Rayan@atlas.com');
INSERT into Emp_Email_Tbl values (5021,'RaiJimi_Rai@atlas.com');
INSERT into Emp_Email_Tbl values (5023,'DetrichPaul_Detrich@atlas.com');
INSERT into Emp_Email_Tbl values (5025,'DailBal_Dail@atlas.com');
INSERT into Emp_Email_Tbl values (5027,'CornerCristy_Corner@atlas.com');
INSERT into Emp_Email_Tbl values (5029,'moreMady_more@atlas.com');
INSERT into Emp_Email_Tbl values (5031,'KumarAvinash_Kumar@atlas.com');
INSERT into Emp_Email_Tbl values (5033,'ShahParul_Shah@atlas.com');
INSERT into Emp_Email_Tbl values (5035,'RajTamul_Raj@atlas.com');
INSERT into Emp_Email_Tbl values (5037,'HasnKamal_Hasn@atlas.com');
INSERT into Emp_Email_Tbl values (5039,'SenRiys_Sen@atlas.com');
INSERT into Emp_Email_Tbl values (5041,'SenPalak_Sen@atlas.com');
INSERT into Emp_Email_Tbl values (5043,'KindleMartha_Kindle@atlas.com');
INSERT into Emp_Email_Tbl values (5045,'MakarovsikyBoris_Makarovsiky@atlas.com');
INSERT into Emp_Email_Tbl values (5047,'SturdbridgeAmamda_Sturdbridge@atlas.com');
INSERT into Emp_Email_Tbl values (5049,'LewisMatt_Lewis@atlas.com');
INSERT into Emp_Email_Tbl values (5051,'SenRakesh_Sen@atlas.com');
INSERT into Emp_Email_Tbl values (5053,'KumarJay_Kumar@atlas.com');
INSERT into Emp_Email_Tbl values (5055,'Abigail_@atlas.com');
INSERT into Emp_Email_Tbl values (5057,'Victoria_@atlas.com');
INSERT into Emp_Email_Tbl values (5059,'Adriana_@atlas.com');
INSERT into Emp_Email_Tbl values (5061,'Aekerman_@atlas.com');
INSERT into Emp_Email_Tbl values (5063,'Alwyn_@atlas.com');
INSERT into Emp_Email_Tbl values (5065,'Patricia_@atlas.com');
INSERT into Emp_Email_Tbl values (5067,'Philip_@atlas.com');
INSERT into Emp_Email_Tbl values (5069,'Peterson_@atlas.com');
INSERT into Emp_Email_Tbl values (5071,'Seaward_@atlas.com');
INSERT into Emp_Email_Tbl values (5073,'Sebastian_@atlas.com');


--INSERTING INTO DEPENDENT TABLE
INSERT into Depdnt_Dtl_Tbl values ('8954L47878','tom hanks',5001,'Spouse');
INSERT into Depdnt_Dtl_Tbl values ('92skczQ321',' Albert Lyons',5001,'Children');
INSERT into Depdnt_Dtl_Tbl values ('895OuS7878',' Sarah Dawson',5003,'Children');
INSERT into Depdnt_Dtl_Tbl values ('92lQ2r0321',' Steve Sullivan',5003,'Children');
INSERT into Depdnt_Dtl_Tbl values ('895Lbl7878',' Gerard Blake',5005,'Spouse');
INSERT into Depdnt_Dtl_Tbl values ('92ZQkGo321',' Shari Page',5005,'Children');
INSERT into Depdnt_Dtl_Tbl values ('89IVs97878',' Myrtle Perry',5007,'Children');
INSERT into Depdnt_Dtl_Tbl values ('92snE6Q321',' Elbert Ward',5007,'Children');
INSERT into Depdnt_Dtl_Tbl values ('89ltEt7878',' Elsa Swanson',5009,'Children');
INSERT into Depdnt_Dtl_Tbl values ('896LwJ7878',' Jean Sandoval',5011,'Spouse');
INSERT into Depdnt_Dtl_Tbl values ('4214014902',' Merle Adkins',5011,'Children');
INSERT into Depdnt_Dtl_Tbl values ('61lqwii782',' Christopher Wong',5011,'Children');
INSERT into Depdnt_Dtl_Tbl values ('89o9oU7878',' Terrance Bowers',5013,'Children');
INSERT into Depdnt_Dtl_Tbl values ('421GbEi902',' Dianne Snyder',5013,'Children');
INSERT into Depdnt_Dtl_Tbl values ('61WmqNQ782',' Jennifer Baker',5013,'Children');
INSERT into Depdnt_Dtl_Tbl values ('894UkA7878',' Dan Bradley',5015,'Children');
INSERT into Depdnt_Dtl_Tbl values ('421SPGa902',' Bertha Lee',5015,'Children');
INSERT into Depdnt_Dtl_Tbl values ('61ysHZ9782',' Harry Jones',5015,'Spouse');
INSERT into Depdnt_Dtl_Tbl values ('89tWMq7878',' Guadalupe Evans',5017,'Spouse');
INSERT into Depdnt_Dtl_Tbl values ('421wZ9Y902',' Marvin Osborne',5017,'Children');
INSERT into Depdnt_Dtl_Tbl values ('61ez4sZ782',' Priscilla Phelps',5017,'Children');
INSERT into Depdnt_Dtl_Tbl values ('89lepb7878',' Sadie Mckenzie',5019,'Spouse');
INSERT into Depdnt_Dtl_Tbl values ('4212uHK902',' Mona Lawson',5019,'Children');
INSERT into Depdnt_Dtl_Tbl values ('618rrE1782',' Yolanda Newman',5019,'Children');
INSERT into Depdnt_Dtl_Tbl values ('421LQFm902',' Kristopher Manning',5021,'Children');
INSERT into Depdnt_Dtl_Tbl values ('421sZJk902',' Vickie Hogan',5021,'Children');
INSERT into Depdnt_Dtl_Tbl values ('61t4WzR782',' Terry Simpson',5021,'Spouse');
INSERT into Depdnt_Dtl_Tbl values ('4214SXE902',' Leonard Cobb',5023,'Children');
INSERT into Depdnt_Dtl_Tbl values ('61gRxIS782',' Larry Frazier',5023,'Children');
INSERT into Depdnt_Dtl_Tbl values ('61trakB782',' Lorene Mitchell',5023,'Children');
INSERT into Depdnt_Dtl_Tbl values ('42162xN902',' Shane Martin',5025,'Spouse');
INSERT into Depdnt_Dtl_Tbl values ('61xoPoy782',' Thelma Pratt',5025,'Children');
INSERT into Depdnt_Dtl_Tbl values ('61tb0CO782',' Percy Sherman',5025,'Children');
INSERT into Depdnt_Dtl_Tbl values ('421auOw902',' Dominick Zimmerman',5027,'Spouse');
INSERT into Depdnt_Dtl_Tbl values ('61tFBAB782',' Wilbert Hughes',5043,'Children');
INSERT into Depdnt_Dtl_Tbl values ('61SvybF782',' Gustavo Burgess',5045,'Children');
INSERT into Depdnt_Dtl_Tbl values ('61EIPDj782',' Karla Greer',5047,'Spouse');
INSERT into Depdnt_Dtl_Tbl values ('61TEA1E782',' Jimmy Lloyd',5049,'Children');
INSERT into Depdnt_Dtl_Tbl values ('61wMpZG782',' Claire Barrett',5051,'Children');
INSERT into Depdnt_Dtl_Tbl values ('61lZEW3782',' Phyllis Black',5053,'Children');
INSERT into Depdnt_Dtl_Tbl values ('61Mo4ez782',' Elsie Singleton',5055,'Spouse');
INSERT into Depdnt_Dtl_Tbl values ('61RHkRQ782',' Lena Wood',5057,'Children');
INSERT into Depdnt_Dtl_Tbl values ('61U33LL782',' Wilbur Hunt',5059,'Children');
INSERT into Depdnt_Dtl_Tbl values ('61gl2Mz782',' Lillian Bell',5061,'Spouse');
INSERT into Depdnt_Dtl_Tbl values ('92DYf4U321',' Doris Owens',5063,'Children');
INSERT into Depdnt_Dtl_Tbl values ('92eMrrP321',' Tabitha Diaz',5065,'Spouse');
INSERT into Depdnt_Dtl_Tbl values ('92DiqL1321',' Walter Anderson',5067,'Children');
INSERT into Depdnt_Dtl_Tbl values ('92trcUp321',' Brent Yates',5069,'Children');
INSERT into Depdnt_Dtl_Tbl values ('92nFipU321',' Vera Payne',5071,'Spouse');
INSERT into Depdnt_Dtl_Tbl values ('92p3Pt8321',' Margie Kelley',5073,'Children');

--Entering into Salary detail table

INSERT INTO Salary_Tbl(Bank_Acc_Num,Bank_Routing_Num,Emp_Id)
VALUES
('200359100100',21272655,5001),
('234573201',31000053,5003),
('7547034',44000804,5005),
('9401028494',121000358,5007),
('1020345678',121000497,5009),
('1200527600',121042882,5011),
('11623852957',121100782,5013),
('192000145399',121122676,5015),
('440116243',121140218,5017),
('532013000',121181866,5019),
('221020145685',122000247,5021),
('101904917',122000496,5023),
('31926819',122000661,5025),
('7099453',122101191,5027),
('12300695',122105278,5029),
('1000206',122220593,5031),
('1863000160',122221686,5033),
('12345678',122239982,5035),
('1001901229114',123000220,5037),
('11101001000',125000024,5039),
('435195001',125200057,5041),
('9400644750000',256074974,5043),
('12345678951',321070007,5045),
('58398257466',321075947,5047),
('608010167519',321171184,5049),
('198742637541',321175261,5051),
('123438',321176833,5053),
('270100',321177706,5055),
('519786457841326',321180379,5057),
('35183598478831',321270742,5059),
('1117947',322270356,5061),
('417164300',322270822,5063),
('1234567890154',322271724,5065),
('71219812874',322271779,5067),
('5601001611379',322281617,5069),
('10901014',322282001,5071),
('1273900070',322282713,5073);


--INSERT into plan code table
INSERT INTO Insr_Bnf_Tbl
VALUES
(221,'laska Insurance Providers',2448,5534,603,2103,22,12),
(222,'Alabama Insurance Providers',3803,5888,568,2068,23,10),
(223,'Arkansas Insurance Providers',2767,5334,617,2117,23,27),
(224,'Arizona Insurance Providers',2740,4139,1176,2676,29,11),
(225,'California Insurance Providers',2760,5991,1219,2719,16,20),
(226,'Colorado Insurance Providers',2473,5414,1033,2533,24,16),
(227,'Connecticut Insurance Providers',2858,4950,556,2056,16,12),
(228,'Delaware Insurance Providers',2684,4494,971,2471,30,27),
(331,'Florida Insurance Providers',2303,4816,692,2192,22,28),
(332,'Georgia Insurance Providers',3486,5260,1497,2997,15,12),
(333,'Hawaii Insurance Providers',2496,5301,1021,2521,27,25),
(422,'Iowa Insurance Providers',3080,5778,1280,2780,30,13),
(432,'Idaho Insurance Providers',3039,4362,897,2397,29,10),
(456,'Illinois Insurance Providers',2068,4741,648,2148,30,29),
(378,'Indiana Insurance Providers',2073,5050,1142,2642,18,20),
(765,'Kansas Insurance Providers',2116,5274,695,2195,22,13),
(392,'Kentucky Insurance Providers',2943,5101,1228,2728,22,24);
--Insert into vacation table


--inserts into the full time employee table 
INSERT INTO FTE_W_Bnf_Tbl
values
(5033,2008,50,500),
(5035,2017,70,502),
(5037,2012,99,400),
(5043,2008,87,300),
(5055,2013,67,540);

---- Insert into Emp_WO_Bnf table
INSERT INTO Emp_WO_Bnf
VALUES
(5019,50,3),
(5021,55,2),
(5023,55,4),
(5025,56,4),
(5057,68,4),
(5059,34,3),
(5061,32,2),
(5063,10,1);

-----INSERT into exempt employee table
INSERT into Exempt_Emp_Tbl
VALUES
(5001,2006,200000),
(5003,2016,400000),
(5005,2011,90000),
(5007,2014,60000),
(5009,2018,30000),
(5011,2017,50000),
(5013,2014,40000),
(5015,2014,21000),
(5017,2013,23000),
(5027,2008,90000),
(5029,2008,60000),
(5031,2010,30000),
(5039,2017,50000),
(5041,2007,21000),
(5045,2011,21000),
(5047,2016,90000),
(5049,2007,60000),
(5051,2018,30000),
(5053,2008,50000),
(5065,2014,50000),
(5067,2016,40000),
(5069,2006,21000),
(5071,2007,60000),
(5073,2008,30000);
-----Emgcy_Cont_Tbl------
 insert into emgcy_cont_tbl values
(' Genesis English','015-252-8487',5001,'Parent'),
(' Chelsea Ross','684-042-4654',5007,'Friend'),
(' Sergio Dickson','780-089-3433',5055,'Parent'),
(' Natalia Rodgers','716-162-2827',5041,'Friend'),
(' Helen Colon','798-969-0865',5005,'Parent'),
(' Dustin Ryan','657-190-8261',5011,'Parent'),
(' Layne Peters','197-634-7107',5059,'Friend'),
(' Janiyah Morse','892-869-5331',5019,'Parent'),
(' Nehemiah Mcconnell','974-153-0528',5033,'Friend'),
(' Walker Rangel','974-153-0528',5067,'Friend'),
(' Lillian West','125-318-0388',5035,'Parent'),
(' Annika Hartman','125-318-0388',5069,'Parent'),
(' Gianna Donovan','512-710-5309',5045,'Children'),
(' Kate Bowers','188-698-5088',5051,'Parent'),
(' Helen Colon','798-969-0865',5021,'Friend'),
(' Dustin Ryan','657-190-8261',5049,'Friend'),
(' Layne Peters','197-634-7107',5003,'Friend'),
(' Janiyah Morse','892-869-5331',5031,'Parent'),
(' Nehemiah Mcconnell','974-153-0528',5065,'Friend'),
(' Walker Rangel','974-153-0528',5053,'Parent'),
(' Lillian West','125-318-0388',5027,'Friend'),
(' Janiyah Morse','959-504-6205',5013,'Friend'),
(' Nehemiah Mcconnell','542-524-8864',5061,'Friend'),
(' Walker Rangel','926-370-4448',5037,'Parent'),
(' Lillian West','926-370-4448',5071,'Friend'),
(' Annika Hartman','954-047-5733',5017,'Parent'),
(' Gianna Donovan','182-305-1132',5023,'Friend'),
(' Kate Bowers','882-232-7270',5039,'Friend'),
(' Jeremiah Dickerson','882-232-7270',5073,'Friend'),
(' Gianna Donovan','512-710-5309',5015,'Friend'),
(' Kate Bowers','188-698-5088',5063,'Friend'),
(' Helen Colon','798-969-0865',5029,'Parent'),
(' Dustin Ryan','657-190-8261',5047,'Parent'),
(' Layne Peters','197-634-7107',5009,'Parent'),
(' Nehemiah Mcconnell','222-812-4313',5057,'Parent'),
(' Walker Rangel','462-207-4305',5043,'Parent'),
(' Lillian West','471-546-1542',5025,'Parent');




--INSERT INTO RESTRICTED ROOM
INSERT INTO Rstric_Rm_Tbl
VALUES
(8900,'RoomBAWC','489-936-8585','NO'),
(9900,'RoomBAWB','421-167-6169','YES'),
(7700,'RoomBBWC','075-444-4716','YES'),
(5500,'RoomBAWA','115-694-5937','NO'),
(6600,'RoomBAWD','660-996-1636','YES'),
(4400,'RoomBCWA','034-139-4951','NO');
--- alternate contact number
INSERT INTO Alt_Cnct_Tbl
VALUES
(5001,'606-847-5992','423-341-3670','334-262-2466'),
(5003,'573-697-1954','000-000-0000','000-000-0000'),
(5005,'678-461-7915','000-000-0000','000-000-0000'),
(5007,'661-297-7842','000-000-0000','000-000-0000'),
(5009,'616-883-7300','000-000-0000','000-000-0000'),
(5011,'570-948-9152','413-331-8494','567-259-3578'),
(5013,'469-239-9351','000-000-0000','000-000-0000'),
(5015,'323-974-9151','000-000-0000','000-000-0000'),
(5017,'616-988-5194','000-000-0000','000-000-0000'),
(5019,'614-574-1597','000-000-0000','000-000-0000'),
(5021,'239-558-9102','234-225-8506','000-000-0000'),
(5023,'442-999-2643','000-000-0000','000-000-0000'),
(5025,'405-699-7199','000-000-0000','000-000-0000'),
(5027,'408-752-9466','000-000-0000','000-000-0000'),
(5029,'318-336-9599','000-000-0000','000-000-0000'),
(5031,'657-600-1144','000-000-0000','000-000-0000'),
(5033,'458-214-5809','000-000-0000','000-000-0000'),
(5035,'240-920-4477','000-000-0000','000-000-0000'),
(5037,'323-694-9818','000-000-0000','000-000-0000'),
(5039,'818-281-1099','469-352-4117','000-000-0000'),
(5041,'530-492-5735','240-780-7027','000-000-0000'),
(5043,'407-687-2336','000-000-0000','000-000-0000'),
(5045,'651-646-8956','000-000-0000','000-000-0000'),
(5047,'747-444-5972','000-000-0000','000-000-0000');
-----employee insurence plan insert
INSERT INTO Emp_Insr_Bnf_Tbl VALUES
(5001,221,2005,2011),
(5003,222,2015,2017),
(5005,223,2010,2017),
(5007,432,2013,2017),
(5009,456,2017,2017),
(5011,378,2016,2017),
(5013,226,2013,2017),
(5015,227,2013,2017),
(5017,228,2012,2017),
(5043,224,2007,2012),
(5045,225,2010,2017),
(5047,226,2015,2017),
(5049,227,2006,2017),
(5051,228,2017,2017),
(5053,331,2007,2017),
(5055,332,2012,2017),
(5065,432,2013,2017),
(5067,456,2015,2017),
(5069,378,2005,2017),
(5071,226,2006,2017),
(5073,227,2007,2017),
(5001,221,2011,2017),
(5043,224,2012,2017);

insert into Emp_Heirarchy_Tbl
values
(5021,5005,3,Null),
(5025,5009,3,Null),
(5059,5013,3,Null),
(5063,5015,3,Null),
(5019,5013,3,Null),
(5023,5015,3,Null),
(5057,5049,3,Null),
(5061,5073,3,Null),
(5003,5003,5,3),
(5011,5003,5,3),
(5007,5003,5,3),
(5001,5003,5,3),
(5047,5011,4,2),
(5069,5011,4,2),
(5071,5011,4,2),
(5051,5007,4,2),
(5005,5001,4,2),
(5009,5001,4,2),
(5013,5001,4,2),
(5015,5001,4,2),
(5049,5001,4,2),
(5073,5001,4,2),
(5031,5047,3,1),
(5039,5069,3,1),
(5045,5071,3,1),
(5029,5051,3,1),
(5053,5051,3,1),
(5017,5009,3,1),
(5027,5013,3,1),
(5041,5015,3,1),
(5065,5049,3,1),
(5067,5073,3,1),
(5037,5039,2,NULL),
(5043,5045,2,NULL),
(5035,5053,2,NULL),
(5033,5017,2,NULL),
(5055,5027,2,NULL);

