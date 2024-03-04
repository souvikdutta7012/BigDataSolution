
-- create [Q1-Q6]

CREATE TABLE city (
  id integer,
  name varchar(17),
  countrycode varchar(15),
  district varchar(20),
  population varchar(20)
);

-- insert
insert into city values ('6','Rotterdam','NLD','Zuid-Holland',null);
insert into city values ('19','Zaanstad','NLD','Noord-Holland','135621');
insert into city values ('214','Porto Alegre','BRA','Rio Grande do Sul','1314032');
insert into city values ('397','Lauro de Freitas','BRA','Bahia','109236');
insert into city values ('547','Dobric','BGR','Varna','100399');
insert into city values ('552','Bujumbura','BDI','Bujumbura','300000');
insert into city values ('554','Santiago de Chile','CHL','Santiago','4703954');
insert into city values ('626','al-Minya','EGY','al-Minya','201360');
insert into city values ('646','Santa Ana','SLV','Santa Ana','139389');
insert into city values ('762','Bahir','Dar','ETH Amhara','96140');
insert into city values ('796','Baguio','PHL','CAR','252386');
insert into city values ('896','Malungon','PHL','Southern Mindanao','93232');
insert into city values ('904','Banjul','GMB','Banjul','42326');
insert into city values ('924','Villa','Nueva','GTM','101295');
insert into city values ('990','Waru','IDN','East Java','124300');
insert into city values ('1155','Latur','IND','Maharashtra','197408');
insert into city values ('1222','Tenali','IND','Andhra Pradesh','143726');
insert into city values ('1235','Tirunelveli','IND','Tamil Nadu','135825');
insert into city values ('1256','Alandur','IND','Tamil Nadu','125244');
insert into city values ('1279','Neyveli','IND','Tamil Nadu','118080');
insert into city values ('1293','Pallavaram','IND','Tamil Nadu','111866');
insert into city values ('1350','Dehri','IND','Bihar','94526');
insert into city values ('1383','Tabriz','IRN','East Azerbaidzan','1191043');
insert into city values ('1385','Karaj','IRN','Teheran','940968');
insert into city values ('1508','Bolzano','ITA','Trentino-Alto Adige','97232');
insert into city values ('1520','Cesena','ITA','Emilia-Romagna','89852');
insert into city values ('1613','Neyagawa','JPN','Osaka','257315');
insert into city values ('1630','Ageo','JPN','Saitama','209442');
insert into city values ('1661','Sayama','JPN','Saitama','162472');
insert into city values ('1681','Omuta','JPN','Fukuoka','142889');
insert into city values ('1739','Tokuyama','JPN','Yamaguchi','107078');
insert into city values ('1793','Novi Sad','YUG','Vojvodina','179626');
insert into city values ('1857','Kelowna','CAN','British Colombia','89442');
insert into city values ('1895','Harbin','CHN','Heilongjiang','4289800');
insert into city values ('1900','Changchun','CHN','Jilin','2812000');
insert into city values ('1913','Lanzhou','CHN','Gansu','1565800');
insert into city values ('1947','Changzhou','CHN','Jiangsu','530000');
insert into city values ('2070','Dezhou','CHN','Shandong','195485');
insert into city values ('2081','Heze','CHN','Shandong','189293');
insert into city values ('2111','Chenzhou','CHN','Hunan','169400');
insert into city values ('2153','Xianning','CHN','Hubei','136811');
insert into city values ('2192','Lhasa','CHN','Tibet','120000');
insert into city values ('2193','Lianyuan','CHN','Hunan','118858');
insert into city values ('2227','Xingcheng','CHN','Liaoning','102384');
insert into city values ('2273','Villavicencio','COL','Meta','273140');
insert into city values ('2384','Tong-yong','KOR','Kyongsangnam','131717');
insert into city values ('2386','Yongju','KOR','Kyongsangbuk','131097');
insert into city values ('2387','Chinhae','KOR','Kyongsangnam','125997');
insert into city values ('2388','Sangju','KOR','Kyongsangbuk','124116');
insert into city values ('2406','Herakleion','GRC','Crete','116178');
insert into city values ('2440','Monrovia','LBR','Montserrado','850000');
insert into city values ('2462','Lilongwe','MWI','Lilongwe','435964');
insert into city values ('2505','Taza','MAR','Taza-Al Hoceima-Taou','92700');
insert into city values ('2555','Xalapa','MEX','Veracruz','390058');
insert into city values ('2602','Ocosingo','MEX','Chiapas','171495');
insert into city values ('2609','Nogales','MEX','Sonora','159103');
insert into city values ('2670','San Pedro Cholula','MEX','Puebla','99734');
insert into city values ('2689','Palikir','FSM','Pohnpei','8600');
insert into city values ('2706','Tete','MOZ','Tete','101984');
insert into city values ('2716','Sittwe (Akyab)','MMR','Rakhine','137600');
insert into city values ('2922','Carolina','PRI','Carolina','186076');
insert into city values ('2967','Grudziadz','POL','Kujawsko-Pomorskie','102434');
insert into city values ('2972','Malabo','GNQ','Bioko','40000');
insert into city values ('3073','Essen','DEU','Nordrhein-Westfalen','599515');
insert into city values ('3169','Apia','WSM','Upolu','35900');
insert into city values ('3198','Dakar','SEN','Cap-Vert','785071');
insert into city values ('3253','Hama','SYR','Hama','343361');
insert into city values ('3288','Luchou','TWN','Taipei','160516');
insert into city values ('3309','Tanga','TZA','Tanga','137400');
insert into city values ('3353','Sousse','TUN','Sousse','145900');
insert into city values ('3377','Kahramanmaras','TUR','Kahramanmaras','245772');
insert into city values ('3430','Odesa','UKR','Odesa','1011000');
insert into city values ('3581','St Petersburg','RUS','Pietari','4694000');
insert into city values ('3770','Hanoi','VNM','Hanoi','1410000');
insert into city values ('3815','El Paso','USA','Texas','563662');
insert into city values ('3878','Scottsdale','USA','Arizona','202705');
insert into city values ('3965','Corona','USA','California','124966');
insert into city values ('3973','Concord','USA','California','121780');
insert into city values ('3977','Cedar Rapids','USA','Iowa','120758');
insert into city values ('3982','Coral Springs','USA','Florida','117549');
insert into city values ('4054','Fairfield','USA','California','92256');
insert into city values ('4058','Boulder','USA','Colorado','91238');
insert into city values ('4061','Fall River','USA','Massachusetts','90555');


ALTER TABLE city MODIFY population INTEGER;


-- Q1. Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.

SELECT * FROM city where countrycode='USA' and population>100000;

-- Q2. Query the NAME ﬁeld for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.

SELECT name FROM city where countrycode='USA' and population>120000;

--  Q3. Query all columns (attributes) for every row in the CITY table.

SELECT * from city;

-- Q4. Query all columns for a city in CITY with the ID 1661. The CITY table is described as follows:

SELECT * from city where id=1661;

-- Q5. Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.

SELECT * FROM city where countrycode='JPN';

-- Q6. Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.

SELECT name FROM city where countrycode='JPN'



-- create [Q7-Q16]

CREATE TABLE station (
  id integer,
  city varchar(31),
  state varchar(21),
  lat_n integer,
  long_w integer
);

-- insert
insert into station values(	794	,	 'Kissee Mills'	,	 'MO'	,	139	,	73	);
insert into station values(	824	,	 'Loma Mar'	,	 'CA'	,	48	,	130	);
insert into station values(	603	,	 'Sandy Hook'	,	 'CT'	,	72	,	148	);
insert into station values(	478	,	 'Tipton'	,	 'IN'	,	33	,	97	);
insert into station values(	619	,	 'Arlington'	,	 'CO'	,	75	,	92	);
insert into station values(	711	,	 'Turner'	,	 'AR'	,	50	,	101	);
insert into station values(	839	,	 'Slidell'	,	 'LA'	,	85	,	151	);
insert into station values(	411	,	 'Negreet'	,	 'LA'	,	98	,	105	);
insert into station values(	588	,	 'Glencoe'	,	 'KY'	,	46	,	136	);
insert into station values(	665	,	 'Chelsea'	,	 'IA'	,	98	,	59	);
insert into station values(	342	,	 'Chignik Lagoon'	,	 'AK'	,	103	,	153	);
insert into station values(	733	,	 'Pelahatchie'	,	 'MS'	,	38	,	28	);
insert into station values(	441	,	 'Hanna City'	,	 'IL'	,	50	,	136	);
insert into station values(	811	,	 'Dorrance'	,	 'KS'	,	102	,	121	);
insert into station values(	698	,	 'Albany'	,	 'CA'	,	49	,	80	);
insert into station values(	325	,	 'Monument'	,	 'KS'	,	70	,	141	);
insert into station values(	414	,	 'Manchester'	,	 'MD'	,	73	,	37	);
insert into station values(	113	,	 'Prescott'	,	 'IA'	,	39	,	65	);
insert into station values(	971	,	 'Graettinger'	,	 'IA'	,	94	,	150	);
insert into station values(	266	,	 'Cahone'	,	 'CO'	,	116	,	127	);
insert into station values(	617	,	 'Sturgis'	,	 'MS'	,	36	,	126	);
insert into station values(	495	,	 'Upperco'	,	 'MD'	,	114	,	29	);
insert into station values(	473	,	 'Highwood'	,	 'IL'	,	27	,	150	);
insert into station values(	959	,	 'Waipahu'	,	 'HI'	,	106	,	33	);
insert into station values(	438	,	 'Bowdon'	,	 'GA'	,	88	,	78	);
insert into station values(	571	,	 'Tyler'	,	 'MN'	,	133	,	58	);
insert into station values(	92	,	 'Watkins'	,	 'CO'	,	83	,	96	);
insert into station values(	399	,	 'Republic'	,	 'MI'	,	75	,	130	);
insert into station values(	426	,	 'Millville'	,	 'CA'	,	32	,	145	);
insert into station values(	844	,	 'Aguanga'	,	 'CA'	,	79	,	65	);
insert into station values(	321	,	 'Bowdon Junction'	,	 'GA'	,	85	,	33	);
insert into station values(	606	,	 'Morenci'	,	 'AZ'	,	104	,	110	);
insert into station values(	957	,	 'South El Monte'	,	 'CA'	,	74	,	79	);
insert into station values(	833	,	 'Hoskinston'	,	 'KY'	,	65	,	65	);
insert into station values(	843	,	 'Talbert'	,	 'KY'	,	39	,	58	);
insert into station values(	166	,	 'Mccomb'	,	 'MS'	,	74	,	42	);
insert into station values(	339	,	 'Kirk'	,	 'CO'	,	141	,	136	);
insert into station values(	909	,	 'Carlock'	,	 'IL'	,	117	,	84	);
insert into station values(	829	,	 'Seward'	,	 'IL'	,	72	,	90	);
insert into station values(	766	,	 'Gustine'	,	 'CA'	,	111	,	140	);
insert into station values(	392	,	 'Delano'	,	 'CA'	,	126	,	91	);
insert into station values(	555	,	 'Westphalia'	,	 'MI'	,	32	,	143	);
insert into station values(	33	,	 'Saint Elmo'	,	 'AL'	,	27	,	50	);
insert into station values(	728	,	 'Roy'	,	 'MT'	,	41	,	51	);
insert into station values(	656	,	 'Pattonsburg'	,	 'MO'	,	138	,	32	);
insert into station values(	394	,	 'Centertown'	,	 'MO'	,	133	,	93	);
insert into station values(	366	,	 'Norvell'	,	 'MI'	,	125	,	93	);
insert into station values(	96	,	 'Raymondville'	,	 'MO'	,	70	,	148	);
insert into station values(	867	,	 'Beaver Island'	,	 'MI'	,	81	,	164	);
insert into station values(	977	,	 'Odin'	,	 'IL'	,	53	,	115	);
insert into station values(	741	,	 'Jemison'	,	 'AL'	,	62	,	25	);
insert into station values(	436	,	 'West Hills'	,	 'CA'	,	68	,	73	);
insert into station values(	323	,	 'Barrigada'	,	 'GU'	,	60	,	147	);
insert into station values(	3	,	 'Hesperia'	,	 'CA'	,	106	,	71	);
insert into station values(	814	,	 'Wickliffe'	,	 'KY'	,	80	,	46	);
insert into station values(	375	,	 'Culdesac'	,	 'ID'	,	47	,	78	);
insert into station values(	467	,	 'Roselawn'	,	 'IN'	,	87	,	51	);
insert into station values(	604	,	 'Forest Lakes'	,	 'AZ'	,	144	,	114	);
insert into station values(	551	,	 'San Simeon'	,	 'CA'	,	37	,	28	);
insert into station values(	706	,	 'Little Rock'	,	 'AR'	,	122	,	121	);
insert into station values(	647	,	 'Portland'	,	 'AR'	,	83	,	44	);
insert into station values(	25	,	 'New Century'	,	 'KS'	,	135	,	79	);
insert into station values(	250	,	 'Hampden'	,	 'MA'	,	76	,	26	);
insert into station values(	124	,	 'Pine City'	,	 'MN'	,	119	,	129	);
insert into station values(	547	,	 'Sandborn'	,	 'IN'	,	55	,	93	);
insert into station values(	701	,	 'Seaton'	,	 'IL'	,	128	,	78	);
insert into station values(	197	,	 'Milledgeville'	,	 'IL'	,	90	,	113	);
insert into station values(	613	,	 'East China'	,	 'MI'	,	108	,	42	);
insert into station values(	630	,	 'Prince Frederick'	,	 'MD'	,	104	,	57	);
insert into station values(	767	,	 'Pomona Park'	,	 'FL'	,	100	,	163	);
insert into station values(	679	,	 'Gretna'	,	 'LA'	,	75	,	142	);
insert into station values(	896	,	 'Yazoo City'	,	 'MS'	,	95	,	85	);
insert into station values(	403	,	 'Zionsville'	,	 'IN'	,	57	,	36	);
insert into station values(	519	,	 'Rio Oso'	,	 'CA'	,	29	,	105	);
insert into station values(	482	,	 'Jolon'	,	 'CA'	,	66	,	52	);
insert into station values(	252	,	 'Childs'	,	 'MD'	,	92	,	104	);
insert into station values(	600	,	 'Shreveport'	,	 'LA'	,	136	,	38	);
insert into station values(	14	,	 'Forest'	,	 'MS'	,	120	,	50	);
insert into station values(	260	,	 'Sizerock'	,	 'KY'	,	116	,	112	);
insert into station values(	65	,	 'Buffalo Creek'	,	 'CO'	,	47	,	148	);
insert into station values(	753	,	 'Algonac'	,	 'MI'	,	118	,	80	);
insert into station values(	174	,	 'Onaway'	,	 'MI'	,	108	,	55	);
insert into station values(	263	,	 'Irvington'	,	 'IL'	,	96	,	68	);
insert into station values(	253	,	 'Winsted'	,	 'MN'	,	68	,	72	);
insert into station values(	557	,	 'Woodbury'	,	 'GA'	,	102	,	93	);
insert into station values(	897	,	 'Samantha'	,	 'AL'	,	75	,	35	);
insert into station values(	98	,	 'Hackleburg'	,	 'AL'	,	119	,	120	);
insert into station values(	423	,	 'Soldier'	,	 'KS'	,	77	,	152	);
insert into station values(	361	,	 'Arrowsmith'	,	 'IL'	,	28	,	109	);
insert into station values(	409	,	 'Columbus'	,	 'GA'	,	67	,	46	);
insert into station values(	312	,	 'Bentonville'	,	 'AR'	,	36	,	78	);
insert into station values(	854	,	 'Kirkland'	,	 'AZ'	,	86	,	57	);
insert into station values(	160	,	 'Grosse Pointe'	,	 'MI'	,	102	,	91	);
insert into station values(	735	,	 'Wilton'	,	 'ME'	,	56	,	157	);
insert into station values(	608	,	 'Busby'	,	 'MT'	,	104	,	29	);
insert into station values(	122	,	 'Robertsdale'	,	 'AL'	,	97	,	85	);
insert into station values(	93	,	 'Dale'	,	 'IN'	,	69	,	34	);
insert into station values(	67	,	 'Reeds'	,	 'MO'	,	30	,	42	);
insert into station values(	906	,	 'Hayfork'	,	 'CA'	,	35	,	116	);
insert into station values(	34	,	 'Mcbrides'	,	 'MI'	,	74	,	35	);
insert into station values(	921	,	 'Lee Center'	,	 'IL'	,	95	,	77	);
insert into station values(	401	,	 'Tennessee'	,	 'IL'	,	55	,	155	);
insert into station values(	536	,	 'Henderson'	,	 'IA'	,	77	,	77	);
insert into station values(	953	,	 'Udall'	,	 'KS'	,	112	,	59	);
insert into station values(	370	,	 'Palm Desert'	,	 'CA'	,	106	,	145	);
insert into station values(	614	,	 'Benedict'	,	 'KS'	,	138	,	95	);
insert into station values(	998	,	 'Oakfield'	,	 'ME'	,	47	,	132	);
insert into station values(	805	,	 'Tamms'	,	 'IL'	,	59	,	75	);
insert into station values(	235	,	 'Haubstadt'	,	 'IN'	,	27	,	32	);
insert into station values(	820	,	 'Chokio'	,	 'MN'	,	81	,	134	);
insert into station values(	650	,	 'Clancy'	,	 'MT'	,	45	,	164	);
insert into station values(	791	,	 'Scotts Valley'	,	 'CA'	,	119	,	90	);
insert into station values(	324	,	 'Norwood'	,	 'MN'	,	144	,	34	);
insert into station values(	442	,	 'Elkton'	,	 'MD'	,	103	,	156	);
insert into station values(	633	,	 'Bertha'	,	 'MN'	,	39	,	105	);
insert into station values(	109	,	 'Bridgeport'	,	 'MI'	,	50	,	79	);
insert into station values(	780	,	 'Cherry'	,	 'IL'	,	68	,	46	);
insert into station values(	492	,	 'Regina'	,	 'KY'	,	131	,	90	);
insert into station values(	965	,	 'Griffin'	,	 'GA'	,	38	,	151	);
insert into station values(	778	,	 'Pine Bluff'	,	 'AR'	,	60	,	145	);
insert into station values(	337	,	 'Mascotte'	,	 'FL'	,	121	,	146	);
insert into station values(	259	,	 'Baldwin'	,	 'MD'	,	81	,	40	);
insert into station values(	955	,	 'Netawaka'	,	 'KS'	,	109	,	119	);
insert into station values(	752	,	 'East Irvine'	,	 'CA'	,	106	,	115	);
insert into station values(	886	,	 'Pony'	,	 'MT'	,	99	,	162	);
insert into station values(	200	,	 'Franklin'	,	 'LA'	,	82	,	31	);
insert into station values(	384	,	 'Amo'	,	 'IN'	,	103	,	159	);
insert into station values(	518	,	 'Vulcan'	,	 'MO'	,	108	,	91	);
insert into station values(	188	,	 'Prairie Du Rocher'	,	 'IL'	,	75	,	70	);
insert into station values(	161	,	 'Alanson'	,	 'MI'	,	90	,	72	);
insert into station values(	486	,	 'Delta'	,	 'LA'	,	136	,	49	);
insert into station values(	406	,	 'Carver'	,	 'MN'	,	45	,	122	);
insert into station values(	940	,	 'Paron'	,	 'AR'	,	59	,	104	);
insert into station values(	237	,	 'Winchester'	,	 'ID'	,	38	,	80	);
insert into station values(	465	,	 'Jerome'	,	 'AZ'	,	121	,	34	);
insert into station values(	591	,	 'Baton Rouge'	,	 'LA'	,	129	,	71	);
insert into station values(	570	,	 'Greenview'	,	 'CA'	,	80	,	57	);
insert into station values(	429	,	 'Lucerne Valley'	,	 'CA'	,	35	,	48	);
insert into station values(	278	,	 'Cromwell'	,	 'MN'	,	128	,	53	);
insert into station values(	927	,	 'Quinter'	,	 'KS'	,	59	,	25	);
insert into station values(	59	,	 'Whitewater'	,	 'MO'	,	82	,	71	);
insert into station values(	218	,	 'Round Pond'	,	 'ME'	,	127	,	124	);
insert into station values(	291	,	 'Clarkdale'	,	 'AZ'	,	58	,	73	);
insert into station values(	668	,	 'Rockton'	,	 'IL'	,	116	,	86	);
insert into station values(	682	,	 'Pheba'	,	 'MS'	,	90	,	127	);
insert into station values(	775	,	 'Eleele'	,	 'HI'	,	80	,	152	);
insert into station values(	527	,	 'Auburn'	,	 'IA'	,	95	,	137	);
insert into station values(	108	,	 'North Berwick'	,	 'ME'	,	70	,	27	);
insert into station values(	190	,	 'Oconee'	,	 'GA'	,	92	,	119	);
insert into station values(	232	,	 'Grandville'	,	 'MI'	,	38	,	70	);
insert into station values(	405	,	 'Susanville'	,	 'CA'	,	128	,	80	);
insert into station values(	273	,	 'Rosie'	,	 'AR'	,	72	,	161	);
insert into station values(	813	,	 'Verona'	,	 'MO'	,	109	,	152	);
insert into station values(	444	,	 'Richland'	,	 'GA'	,	105	,	113	);
insert into station values(	899	,	 'Fremont'	,	 'MI'	,	54	,	150	);
insert into station values(	738	,	 'Philipsburg'	,	 'MT'	,	95	,	72	);
insert into station values(	215	,	 'Kensett'	,	 'IA'	,	55	,	139	);
insert into station values(	743	,	 'De Tour Village'	,	 'MI'	,	25	,	25	);
insert into station values(	377	,	 'Koleen'	,	 'IN'	,	137	,	110	);
insert into station values(	727	,	 'Winslow'	,	 'IL'	,	113	,	38	);
insert into station values(	363	,	 'Reasnor'	,	 'IA'	,	41	,	162	);
insert into station values(	117	,	 'West Grove'	,	 'IA'	,	127	,	99	);
insert into station values(	420	,	 'Frankfort Heights'	,	 'IL'	,	71	,	30	);
insert into station values(	888	,	 'Bono'	,	 'AR'	,	133	,	150	);
insert into station values(	784	,	 'Biggsville'	,	 'IL'	,	85	,	138	);
insert into station values(	413	,	 'Linthicum Heights'	,	 'MD'	,	127	,	67	);
insert into station values(	695	,	 'Amazonia'	,	 'MO'	,	45	,	148	);
insert into station values(	609	,	 'Marysville'	,	 'MI'	,	85	,	132	);
insert into station values(	471	,	 'Cape Girardeau'	,	 'MO'	,	73	,	90	);
insert into station values(	649	,	 'Pengilly'	,	 'MN'	,	25	,	154	);
insert into station values(	946	,	 'Newton Center'	,	 'MA'	,	48	,	144	);
insert into station values(	380	,	 'Crane Lake'	,	 'MN'	,	72	,	43	);
insert into station values(	383	,	 'Newbury'	,	 'MA'	,	128	,	85	);
insert into station values(	44	,	 'Kismet'	,	 'KS'	,	99	,	156	);
insert into station values(	433	,	 'Canton'	,	 'ME'	,	98	,	105	);
insert into station values(	283	,	 'Clipper Mills'	,	 'CA'	,	113	,	56	);
insert into station values(	474	,	 'Grayslake'	,	 'IL'	,	61	,	33	);
insert into station values(	233	,	 'Pierre Part'	,	 'LA'	,	52	,	90	);
insert into station values(	990	,	 'Bison'	,	 'KS'	,	132	,	74	);
insert into station values(	502	,	 'Bellevue'	,	 'KY'	,	127	,	121	);
insert into station values(	327	,	 'Ridgway'	,	 'CO'	,	77	,	110	);
insert into station values(	4	,	 'South Britain'	,	 'CT'	,	65	,	33	);
insert into station values(	228	,	 'Rydal'	,	 'GA'	,	35	,	78	);
insert into station values(	642	,	 'Lynnville'	,	 'KY'	,	25	,	146	);
insert into station values(	885	,	 'Deerfield'	,	 'MO'	,	40	,	35	);
insert into station values(	539	,	 'Montreal'	,	 'MO'	,	129	,	127	);
insert into station values(	202	,	 'Hope'	,	 'MN'	,	140	,	43	);
insert into station values(	593	,	 'Aliso Viejo'	,	 'CA'	,	67	,	131	);
insert into station values(	521	,	 'Gowrie'	,	 'IA'	,	130	,	127	);
insert into station values(	938	,	 'Andersonville'	,	 'GA'	,	141	,	72	);
insert into station values(	919	,	 'Knob Lick'	,	 'KY'	,	135	,	33	);
insert into station values(	528	,	 'Crouseville'	,	 'ME'	,	36	,	81	);
insert into station values(	331	,	 'Cranks'	,	 'KY'	,	55	,	27	);
insert into station values(	45	,	 'Rives Junction'	,	 'MI'	,	94	,	116	);
insert into station values(	944	,	 'Ledyard'	,	 'CT'	,	134	,	143	);
insert into station values(	949	,	 'Norway'	,	 'ME'	,	83	,	88	);
insert into station values(	88	,	 'Eros'	,	 'LA'	,	95	,	58	);
insert into station values(	878	,	 'Rantoul'	,	 'KS'	,	31	,	118	);
insert into station values(	35	,	 'Richmond Hill'	,	 'GA'	,	39	,	113	);
insert into station values(	17	,	 'Fredericktown'	,	 'MO'	,	105	,	112	);
insert into station values(	447	,	 'Arkadelphia'	,	 'AR'	,	98	,	49	);
insert into station values(	498	,	 'Glen Carbon'	,	 'IL'	,	60	,	140	);
insert into station values(	351	,	 'Fredericksburg'	,	 'IN'	,	44	,	78	);
insert into station values(	774	,	 'Manchester'	,	 'IA'	,	129	,	123	);
insert into station values(	116	,	 'Mc Henry'	,	 'MD'	,	93	,	112	);
insert into station values(	963	,	 'Eriline'	,	 'KY'	,	93	,	65	);
insert into station values(	643	,	 'Wellington'	,	 'KY'	,	100	,	31	);
insert into station values(	781	,	 'Hoffman Estates'	,	 'IL'	,	129	,	53	);
insert into station values(	364	,	 'Howard Lake'	,	 'MN'	,	125	,	78	);
insert into station values(	777	,	 'Edgewater'	,	 'MD'	,	130	,	72	);
insert into station values(	15	,	 'Ducor'	,	 'CA'	,	140	,	102	);
insert into station values(	910	,	 'Salem'	,	 'KY'	,	86	,	113	);
insert into station values(	612	,	 'Sturdivant'	,	 'MO'	,	93	,	86	);
insert into station values(	537	,	 'Hagatna'	,	 'GU'	,	97	,	151	);
insert into station values(	970	,	 'East Haddam'	,	 'CT'	,	115	,	132	);
insert into station values(	510	,	 'Eastlake'	,	 'MI'	,	134	,	38	);
insert into station values(	354	,	 'Larkspur'	,	 'CA'	,	107	,	65	);
insert into station values(	983	,	 'Patriot'	,	 'IN'	,	82	,	46	);
insert into station values(	799	,	 'Corriganville'	,	 'MD'	,	141	,	153	);
insert into station values(	581	,	 'Carlos'	,	 'MN'	,	114	,	66	);
insert into station values(	825	,	 'Addison'	,	 'MI'	,	96	,	142	);
insert into station values(	526	,	 'Tarzana'	,	 'CA'	,	135	,	81	);
insert into station values(	176	,	 'Grapevine'	,	 'AR'	,	92	,	84	);
insert into station values(	994	,	 'Kanorado'	,	 'KS'	,	65	,	85	);
insert into station values(	704	,	 'Climax'	,	 'MI'	,	127	,	107	);
insert into station values(	582	,	 'Curdsville'	,	 'KY'	,	84	,	150	);
insert into station values(	884	,	 'Southport'	,	 'CT'	,	59	,	63	);
insert into station values(	196	,	 'Compton'	,	 'IL'	,	106	,	99	);
insert into station values(	605	,	 'Notasulga'	,	 'AL'	,	66	,	115	);
insert into station values(	430	,	 'Rumsey'	,	 'KY'	,	70	,	50	);
insert into station values(	234	,	 'Rogers'	,	 'CT'	,	140	,	33	);
insert into station values(	700	,	 'Pleasant Grove'	,	 'AR'	,	135	,	145	);
insert into station values(	702	,	 'Everton'	,	 'MO'	,	119	,	51	);
insert into station values(	662	,	 'Skanee'	,	 'MI'	,	70	,	129	);
insert into station values(	171	,	 'Springerville'	,	 'AZ'	,	124	,	150	);
insert into station values(	615	,	 'Libertytown'	,	 'MD'	,	144	,	111	);
insert into station values(	26	,	 'Church Creek'	,	 'MD'	,	39	,	91	);
insert into station values(	692	,	 'Yellow Pine'	,	 'ID'	,	83	,	150	);
insert into station values(	336	,	 'Dumont'	,	 'MN'	,	57	,	129	);
insert into station values(	464	,	 'Gales Ferry'	,	 'CT'	,	104	,	37	);
insert into station values(	315	,	 'Ravenna'	,	 'KY'	,	79	,	106	);
insert into station values(	505	,	 'Williams'	,	 'AZ'	,	73	,	111	);
insert into station values(	842	,	 'Decatur'	,	 'MI'	,	63	,	161	);
insert into station values(	982	,	 'Holbrook'	,	 'AZ'	,	134	,	103	);
insert into station values(	868	,	 'Sherrill'	,	 'AR'	,	79	,	152	);
insert into station values(	554	,	 'Brownsdale'	,	 'MN'	,	52	,	50	);
insert into station values(	199	,	 'Linden'	,	 'MI'	,	53	,	32	);
insert into station values(	453	,	 'Sedgwick'	,	 'AR'	,	68	,	75	);
insert into station values(	451	,	 'Fort Atkinson'	,	 'IA'	,	142	,	140	);
insert into station values(	950	,	 'Peachtree City'	,	 'GA'	,	80	,	155	);
insert into station values(	326	,	 'Rocheport'	,	 'MO'	,	114	,	64	);
insert into station values(	189	,	 'West Somerset'	,	 'KY'	,	73	,	45	);
insert into station values(	638	,	 'Clovis'	,	 'CA'	,	92	,	138	);
insert into station values(	156	,	 'Heyburn'	,	 'ID'	,	82	,	121	);
insert into station values(	861	,	 'Peabody'	,	 'KS'	,	75	,	152	);
insert into station values(	722	,	 'Marion Junction'	,	 'AL'	,	53	,	31	);
insert into station values(	428	,	 'Randall'	,	 'KS'	,	47	,	135	);
insert into station values(	677	,	 'Hayesville'	,	 'IA'	,	119	,	42	);
insert into station values(	183	,	 'Jordan'	,	 'MN'	,	68	,	35	);
insert into station values(	322	,	 'White Horse Beach'	,	 'MA'	,	54	,	59	);
insert into station values(	827	,	 'Greenville'	,	 'IL'	,	50	,	153	);
insert into station values(	242	,	 'Macy'	,	 'IN'	,	138	,	152	);
insert into station values(	621	,	 'Flowood'	,	 'MS'	,	64	,	149	);
insert into station values(	960	,	 'Deep River'	,	 'IA'	,	75	,	38	);
insert into station values(	180	,	 'Napoleon'	,	 'IN'	,	32	,	160	);
insert into station values(	382	,	 'Leavenworth'	,	 'IN'	,	100	,	121	);
insert into station values(	853	,	 'Coldwater'	,	 'KS'	,	47	,	26	);
insert into station values(	105	,	 'Weldon'	,	 'CA'	,	134	,	118	);
insert into station values(	357	,	 'Yellville'	,	 'AR'	,	35	,	42	);
insert into station values(	710	,	 'Turners Falls'	,	 'MA'	,	31	,	125	);
insert into station values(	520	,	 'Delray Beach'	,	 'FL'	,	27	,	158	);
insert into station values(	920	,	 'Eustis'	,	 'FL'	,	42	,	39	);
insert into station values(	684	,	 'Mineral Point'	,	 'MO'	,	91	,	41	);
insert into station values(	355	,	 'Weldona'	,	 'CO'	,	32	,	58	);
insert into station values(	389	,	 'Midpines'	,	 'CA'	,	106	,	59	);
insert into station values(	303	,	 'Cascade'	,	 'ID'	,	31	,	157	);
insert into station values(	501	,	 'Tefft'	,	 'IN'	,	93	,	150	);
insert into station values(	673	,	 'Showell'	,	 'MD'	,	44	,	163	);
insert into station values(	834	,	 'Bayville'	,	 'ME'	,	106	,	143	);
insert into station values(	255	,	 'Brighton'	,	 'IL'	,	107	,	32	);
insert into station values(	595	,	 'Grimes'	,	 'IA'	,	42	,	74	);
insert into station values(	709	,	 'Nubieber'	,	 'CA'	,	132	,	49	);
insert into station values(	100	,	 'North Monmouth'	,	 'ME'	,	130	,	78	);
insert into station values(	522	,	 'Harmony'	,	 'MN'	,	124	,	126	);
insert into station values(	16	,	 'Beaufort'	,	 'MO'	,	71	,	85	);
insert into station values(	231	,	 'Arispe'	,	 'IA'	,	31	,	137	);
insert into station values(	923	,	 'Union Star'	,	 'MO'	,	79	,	132	);
insert into station values(	891	,	 'Humeston'	,	 'IA'	,	74	,	122	);
insert into station values(	165	,	 'Baileyville'	,	 'IL'	,	82	,	61	);
insert into station values(	757	,	 'Lakeville'	,	 'CT'	,	59	,	94	);
insert into station values(	506	,	 'Firebrick'	,	 'KY'	,	49	,	95	);
insert into station values(	76	,	 'Pico Rivera'	,	 'CA'	,	143	,	116	);
insert into station values(	246	,	 'Ludington'	,	 'MI'	,	30	,	120	);
insert into station values(	583	,	 'Channing'	,	 'MI'	,	117	,	56	);
insert into station values(	666	,	 'West Baden Springs'	,	 'IN'	,	30	,	96	);
insert into station values(	373	,	 'Pawnee'	,	 'IL'	,	85	,	81	);
insert into station values(	504	,	 'Melber'	,	 'KY'	,	37	,	55	);
insert into station values(	901	,	 'Manchester'	,	 'MN'	,	71	,	84	);
insert into station values(	306	,	 'Bainbridge'	,	 'GA'	,	62	,	56	);
insert into station values(	821	,	 'Sanders'	,	 'AZ'	,	130	,	96	);
insert into station values(	586	,	 'Ottertail'	,	 'MN'	,	100	,	44	);
insert into station values(	95	,	 'Dupo'	,	 'IL'	,	41	,	29	);
insert into station values(	524	,	 'Montrose'	,	 'CA'	,	136	,	119	);
insert into station values(	716	,	 'Schleswig'	,	 'IA'	,	119	,	51	);
insert into station values(	849	,	 'Harbor Springs'	,	 'MI'	,	141	,	148	);
insert into station values(	611	,	 'Richmond'	,	 'IL'	,	113	,	163	);
insert into station values(	904	,	 'Ermine'	,	 'KY'	,	119	,	62	);
insert into station values(	740	,	 'Siler'	,	 'KY'	,	137	,	117	);
insert into station values(	439	,	 'Reeves'	,	 'LA'	,	35	,	51	);
insert into station values(	57	,	 'Clifton'	,	 'AZ'	,	30	,	135	);
insert into station values(	155	,	 'Casco'	,	 'MI'	,	138	,	109	);
insert into station values(	755	,	 'Sturgis'	,	 'MI'	,	117	,	135	);
insert into station values(	11	,	 'Crescent City'	,	 'FL'	,	58	,	117	);
insert into station values(	287	,	 'Madisonville'	,	 'LA'	,	112	,	53	);
insert into station values(	435	,	 'Albion'	,	 'IN'	,	44	,	121	);
insert into station values(	672	,	 'Lismore'	,	 'MN'	,	58	,	103	);
insert into station values(	572	,	 'Athens'	,	 'IN'	,	75	,	120	);
insert into station values(	890	,	 'Eufaula'	,	 'AL'	,	140	,	103	);
insert into station values(	975	,	 'Panther Burn'	,	 'MS'	,	116	,	164	);
insert into station values(	914	,	 'Hanscom Afb'	,	 'MA'	,	129	,	136	);
insert into station values(	119	,	 'Wildie'	,	 'KY'	,	69	,	111	);
insert into station values(	540	,	 'Mosca'	,	 'CO'	,	89	,	141	);
insert into station values(	678	,	 'Bennington'	,	 'IN'	,	35	,	26	);
insert into station values(	208	,	 'Lottie'	,	 'LA'	,	109	,	82	);
insert into station values(	512	,	 'Garland'	,	 'ME'	,	108	,	134	);
insert into station values(	352	,	 'Clutier'	,	 'IA'	,	61	,	127	);
insert into station values(	948	,	 'Lupton'	,	 'MI'	,	139	,	53	);
insert into station values(	503	,	 'Northfield'	,	 'MN'	,	61	,	37	);
insert into station values(	288	,	 'Daleville'	,	 'AL'	,	121	,	136	);
insert into station values(	560	,	 'Osage City'	,	 'KS'	,	110	,	89	);
insert into station values(	479	,	 'Cuba'	,	 'MO'	,	63	,	87	);
insert into station values(	826	,	 'Norris'	,	 'MT'	,	47	,	37	);
insert into station values(	651	,	 'Clopton'	,	 'AL'	,	40	,	84	);
insert into station values(	143	,	 'Renville'	,	 'MN'	,	142	,	99	);
insert into station values(	240	,	 'Saint Paul'	,	 'KS'	,	66	,	163	);
insert into station values(	102	,	 'Kirksville'	,	 'MO'	,	140	,	143	);
insert into station values(	69	,	 'Kingsland'	,	 'AR'	,	78	,	85	);
insert into station values(	181	,	 'Fairview'	,	 'KS'	,	80	,	164	);
insert into station values(	175	,	 'Lydia'	,	 'LA'	,	41	,	39	);
insert into station values(	80	,	 'Bridgton'	,	 'ME'	,	93	,	140	);
insert into station values(	596	,	 'Brownstown'	,	 'IL'	,	48	,	63	);
insert into station values(	301	,	 'Monona'	,	 'IA'	,	144	,	81	);
insert into station values(	987	,	 'Hartland'	,	 'MI'	,	136	,	107	);
insert into station values(	973	,	 'Andover'	,	 'CT'	,	51	,	52	);
insert into station values(	981	,	 'Lakota'	,	 'IA'	,	56	,	92	);
insert into station values(	440	,	 'Grand Terrace'	,	 'CA'	,	37	,	126	);
insert into station values(	110	,	 'Mesick'	,	 'MI'	,	82	,	108	);
insert into station values(	396	,	 'Dryden'	,	 'MI'	,	69	,	47	);
insert into station values(	637	,	 'Beverly'	,	 'KY'	,	57	,	126	);
insert into station values(	566	,	 'Marine On Saint Croix'	,	 'MN'	,	126	,null		);
insert into station values(	801	,	 'Pocahontas'	,	 'IL'	,	109	,	83	);
insert into station values(	739	,	 'Fort Meade'	,	 'FL'	,	43	,	35	);
insert into station values(	130	,	 'Hayneville'	,	 'AL'	,	109	,	157	);
insert into station values(	345	,	 'Yoder'	,	 'IN'	,	83	,	143	);
insert into station values(	851	,	 'Gatewood'	,	 'MO'	,	76	,	145	);
insert into station values(	489	,	 'Madden'	,	 'MS'	,	81	,	99	);
insert into station values(	223	,	 'Losantville'	,	 'IN'	,	112	,	106	);
insert into station values(	538	,	 'Cheswold'	,	 'DE'	,	31	,	59	);
insert into station values(	329	,	 'Caseville'	,	 'MI'	,	102	,	98	);
insert into station values(	815	,	 'Pomona'	,	 'MO'	,	52	,	50	);
insert into station values(	789	,	 'Hopkinsville'	,	 'KY'	,	27	,	47	);
insert into station values(	269	,	 'Jack'	,	 'AL'	,	49	,	85	);
insert into station values(	969	,	 'Dixie'	,	 'GA'	,	27	,	36	);
insert into station values(	271	,	 'Hillside'	,	 'CO'	,	99	,	68	);
insert into station values(	667	,	 'Hawarden'	,	 'IA'	,	90	,	46	);
insert into station values(	350	,	 'Cannonsburg'	,	 'MI'	,	91	,	120	);
insert into station values(	49	,	 'Osborne'	,	 'KS'	,	70	,	139	);
insert into station values(	332	,	 'Elm Grove'	,	 'LA'	,	45	,	29	);
insert into station values(	172	,	 'Atlantic Mine'	,	 'MI'	,	131	,	99	);
insert into station values(	699	,	 'North Branford'	,	 'CT'	,	37	,	95	);
insert into station values(	417	,	 'New Liberty'	,	 'IA'	,	139	,	94	);
insert into station values(	99	,	 'Woodstock Valley'	,	 'CT'	,	117	,	162	);
insert into station values(	404	,	 'Farmington'	,	 'IL'	,	91	,	72	);
insert into station values(	23	,	 'Honolulu'	,	 'HI'	,	110	,	139	);
insert into station values(	1	,	 'Pfeifer'	,	 'KS'	,	37	,	65	);
insert into station values(	127	,	 'Oshtemo'	,	 'MI'	,	100	,	135	);
insert into station values(	657	,	 'Gridley'	,	 'KS'	,	118	,	55	);
insert into station values(	261	,	 'Fulton'	,	 'KY'	,	111	,	51	);
insert into station values(	182	,	 'Winter Park'	,	 'FL'	,	133	,	32	);
insert into station values(	328	,	 'Monroe'	,	 'LA'	,	28	,	108	);
insert into station values(	779	,	 'Del Mar'	,	 'CA'	,	59	,	95	);
insert into station values(	646	,	 'Greens Fork'	,	 'IN'	,	133	,	135	);
insert into station values(	756	,	 'Garden City'	,	 'AL'	,	96	,	105	);
insert into station values(	157	,	 'Blue River'	,	 'KY'	,	116	,	161	);
insert into station values(	400	,	 'New Ross'	,	 'IN'	,	134	,	120	);
insert into station values(	61	,	 'Brilliant'	,	 'AL'	,	86	,	159	);
insert into station values(	610	,	 'Archie'	,	 'MO'	,	40	,	28	);
insert into station values(	985	,	 'Winslow'	,	 'AR'	,	126	,	126	);
insert into station values(	207	,	 'Olmitz'	,	 'KS'	,	29	,	38	);
insert into station values(	941	,	 'Allerton'	,	 'IA'	,	61	,	112	);
insert into station values(	70	,	 'Norphlet'	,	 'AR'	,	144	,	61	);
insert into station values(	343	,	 'Mechanic Falls'	,	 'ME'	,	71	,	71	);
insert into station values(	531	,	 'North Middletown'	,	 'KY'	,	42	,	141	);
insert into station values(	996	,	 'Keyes'	,	 'CA'	,	76	,	85	);
insert into station values(	167	,	 'Equality'	,	 'AL'	,	106	,	116	);
insert into station values(	750	,	 'Neon'	,	 'KY'	,	101	,	147	);
insert into station values(	410	,	 'Calhoun'	,	 'KY'	,	95	,	56	);
insert into station values(	725	,	 'Alpine'	,	 'AR'	,	116	,	114	);
insert into station values(	988	,	 'Mullan'	,	 'ID'	,	143	,	154	);
insert into station values(	55	,	 'Coalgood'	,	 'KY'	,	57	,	149	);
insert into station values(	640	,	 'Walnut'	,	 'MS'	,	40	,	76	);
insert into station values(	302	,	 'Saint Petersburg'	,	 'FL'	,	51	,	119	);
insert into station values(	387	,	 'Ojai'	,	 'CA'	,	68	,	119	);
insert into station values(	476	,	 'Julian'	,	 'CA'	,	130	,	101	);
insert into station values(	907	,	 'Veedersburg'	,	 'IN'	,	78	,	94	);
insert into station values(	294	,	 'Orange Park'	,	 'FL'	,	59	,	137	);
insert into station values(	661	,	 'Payson'	,	 'AZ'	,	126	,	154	);
insert into station values(	745	,	 'Windom'	,	 'KS'	,	114	,	126	);
insert into station values(	631	,	 'Urbana'	,	 'IA'	,	142	,	29	);
insert into station values(	356	,	 'Ludlow'	,	 'CA'	,	110	,	87	);
insert into station values(	419	,	 'Lindsay'	,	 'MT'	,	143	,	67	);
insert into station values(	494	,	 'Palatka'	,	 'FL'	,	94	,	52	);
insert into station values(	625	,	 'Bristol'	,	 'ME'	,	87	,	95	);
insert into station values(	459	,	 'Harmony'	,	 'IN'	,	135	,	70	);
insert into station values(	636	,	 'Ukiah'	,	 'CA'	,	86	,	89	);
insert into station values(	106	,	 'Yuma'	,	 'AZ'	,	111	,	153	);
insert into station values(	204	,	 'Alba'	,	 'MI'	,	91	,	103	);
insert into station values(	344	,	 'Zachary'	,	 'LA'	,	60	,	152	);
insert into station values(	599	,	 'Esmond'	,	 'IL'	,	75	,	90	);
insert into station values(	515	,	 'Waresboro'	,	 'GA'	,	144	,	153	);
insert into station values(	497	,	 'Hills'	,	 'MN'	,	137	,	134	);
insert into station values(	162	,	 'Montgomery City'	,	 'MO'	,	70	,	44	);
insert into station values(	499	,	 'Delavan'	,	 'MN'	,	32	,	64	);
insert into station values(	362	,	 'Magnolia'	,	 'MS'	,	112	,	31	);
insert into station values(	545	,	 'Byron'	,	 'CA'	,	136	,	120	);
insert into station values(	712	,	 'Dundee'	,	 'IA'	,	61	,	105	);
insert into station values(	257	,	 'Eureka Springs'	,	 'AR'	,	72	,	34	);
insert into station values(	154	,	 'Baker'	,	 'CA'	,	31	,	148	);
insert into station values(	715	,	 'Hyde Park'	,	 'MA'	,	65	,	156	);
insert into station values(	493	,	 'Groveoak'	,	 'AL'	,	53	,	87	);
insert into station values(	836	,	 'Kenner'	,	 'LA'	,	91	,	126	);
insert into station values(	82	,	 'Many'	,	 'LA'	,	36	,	94	);
insert into station values(	644	,	 'Seward'	,	 'AK'	,	120	,	35	);
insert into station values(	391	,	 'Berryton'	,	 'KS'	,	60	,	139	);
insert into station values(	696	,	 'Chilhowee'	,	 'MO'	,	79	,	49	);
insert into station values(	905	,	 'Newark'	,	 'IL'	,	72	,	129	);
insert into station values(	81	,	 'Cowgill'	,	 'MO'	,	136	,	27	);
insert into station values(	31	,	 'Novinger'	,	 'MO'	,	108	,	111	);
insert into station values(	299	,	 'Goodman'	,	 'MS'	,	101	,	117	);
insert into station values(	84	,	 'Cobalt'	,	 'CT'	,	87	,	26	);
insert into station values(	754	,	 'South Haven'	,	 'MI'	,	144	,	52	);
insert into station values(	144	,	 'Eskridge'	,	 'KS'	,	107	,	63	);
insert into station values(	305	,	 'Bennington'	,	 'KS'	,	93	,	83	);
insert into station values(	226	,	 'Decatur'	,	 'MS'	,	71	,	117	);
insert into station values(	224	,	 'West Hyannisport'	,	 'MA'	,	58	,	96	);
insert into station values(	694	,	 'Ozona'	,	 'FL'	,	144	,	120	);
insert into station values(	623	,	 'Jackson'	,	 'AL'	,	111	,	67	);
insert into station values(	543	,	 'Lapeer'	,	 'MI'	,	128	,	114	);
insert into station values(	819	,	 'Peaks Island'	,	 'ME'	,	59	,	110	);
insert into station values(	243	,	 'Hazlehurst'	,	 'MS'	,	49	,	108	);
insert into station values(	457	,	 'Chester'	,	 'CA'	,	69	,	123	);
insert into station values(	871	,	 'Clarkston'	,	 'MI'	,	93	,	80	);
insert into station values(	470	,	 'Healdsburg'	,	 'CA'	,	111	,	54	);
insert into station values(	705	,	 'Hotchkiss'	,	 'CO'	,	69	,	71	);
insert into station values(	690	,	 'Ravenden Springs'	,	 'AR'	,	67	,	108	);
insert into station values(	62	,	 'Monroe'	,	 'AR'	,	131	,	150	);
insert into station values(	365	,	 'Payson'	,	 'IL'	,	81	,	92	);
insert into station values(	922	,	 'Kell'	,	 'IL'	,	70	,	58	);
insert into station values(	838	,	 'Strasburg'	,	 'CO'	,	89	,	47	);
insert into station values(	286	,	 'Five Points'	,	 'AL'	,	45	,	122	);
insert into station values(	968	,	 'Norris City'	,	 'IL'	,	53	,	76	);
insert into station values(	928	,	 'Coaling'	,	 'AL'	,	144	,	52	);
insert into station values(	746	,	 'Orange City'	,	 'IA'	,	93	,	162	);
insert into station values(	892	,	 'Effingham'	,	 'KS'	,	132	,	97	);
insert into station values(	193	,	 'Corcoran'	,	 'CA'	,	81	,	139	);
insert into station values(	225	,	 'Garden City'	,	 'IA'	,	54	,	119	);
insert into station values(	573	,	 'Alton'	,	 'MO'	,	79	,	112	);
insert into station values(	830	,	 'Greenway'	,	 'AR'	,	119	,	35	);
insert into station values(	241	,	 'Woodsboro'	,	 'MD'	,	76	,	141	);
insert into station values(	783	,	 'Strawn'	,	 'IL'	,	29	,	51	);
insert into station values(	675	,	 'Dent'	,	 'MN'	,	70	,	136	);
insert into station values(	270	,	 'Shingletown'	,	 'CA'	,	61	,	102	);
insert into station values(	378	,	 'Clio'	,	 'IA'	,	46	,	115	);
insert into station values(	104	,	 'Yalaha'	,	 'FL'	,	120	,	119	);
insert into station values(	460	,	 'Leakesville'	,	 'MS'	,	107	,	72	);
insert into station values(	804	,	 'Fort Lupton'	,	 'CO'	,	38	,	93	);
insert into station values(	53	,	 'Shasta'	,	 'CA'	,	99	,	155	);
insert into station values(	448	,	 'Canton'	,	 'MN'	,	123	,	151	);
insert into station values(	751	,	 'Agency'	,	 'MO'	,	59	,	95	);
insert into station values(	29	,	 'South Carrollton'	,	 'KY'	,	57	,	116	);
insert into station values(	718	,	 'Taft'	,	 'CA'	,	107	,	146	);
insert into station values(	213	,	 'Calpine'	,	 'CA'	,	46	,	43	);
insert into station values(	624	,	 'Knobel'	,	 'AR'	,	95	,	62	);
insert into station values(	908	,	 'Bullhead City'	,	 'AZ'	,	94	,	30	);
insert into station values(	845	,	 'Tina'	,	 'MO'	,	131	,	28	);
insert into station values(	685	,	 'Anthony'	,	 'KS'	,	45	,	161	);
insert into station values(	731	,	 'Emmett'	,	 'ID'	,	57	,	31	);
insert into station values(	311	,	 'South Haven'	,	 'MN'	,	30	,	87	);
insert into station values(	866	,	 'Haverhill'	,	 'IA'	,	61	,	109	);
insert into station values(	598	,	 'Middleboro'	,	 'MA'	,	108	,	149	);
insert into station values(	541	,	 'Siloam'	,	 'GA'	,	105	,	92	);
insert into station values(	889	,	 'Lena'	,	 'LA'	,	78	,	129	);
insert into station values(	654	,	 'Lee'	,	 'IL'	,	27	,	51	);
insert into station values(	841	,	 'Freeport'	,	 'MI'	,	113	,	50	);
insert into station values(	446	,	 'Mid Florida'	,	 'FL'	,	110	,	50	);
insert into station values(	249	,	 'Acme'	,	 'LA'	,	73	,	67	);
insert into station values(	376	,	 'Gorham'	,	 'KS'	,	111	,	64	);
insert into station values(	136	,	 'Bass Harbor'	,	 'ME'	,	137	,	61	);
insert into station values(	455	,	 'Granger'	,	 'IA'	,	33	,	102	);

-- Q7. Query a list of CITY and STATE from the STATION table. The STATION table is described as 

 select city,state from station;

-- Q8. Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.

 select city from station where id%2=0;

-- Q9. Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.

 select count(city)-count(distinct city) from station;

-- Q10. Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes ﬁrst when ordered alphabetically.

 select A.city,A.city_length from (select city,char_length(city) as city_length from station order by city_length asc ,city asc )A limit 1 ;
 select A.city,A.city_length from (select city,char_length(city) as city_length from station order by city_length desc ,city asc )A limit 1 ;

-- Q11. Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

 select distinct city from station where lower(substr(city,1,1)) in ('a','e','i','o','u');

-- Q12. Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

 select distinct city from station where lower(substr(city,-1,1)) in ('a','e','i','o','u');

-- Q13. Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

 select distinct city from station where lower(substr(city,1,1)) not in ('a','e','i','o','u');

-- Q14. Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

 select distinct city from station where lower(substr(city,-1,1)) not in ('a','e','i','o','u');

-- Q15. Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.Input Format
 select distinct city from station where lower(substr(city,1,1)) not in ('a','e','i','o','u') or lower(substr(city,-1,1)) not in ('a','e','i','o','u');


-- Q16. Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
 select distinct city from station where lower(substr(city,1,1)) not in ('a','e','i','o','u') and lower(substr(city,-1,1)) not in ('a','e','i','o','u');



-- create [Q.17]
CREATE TABLE product (
  product_id INTEGER,
  product_name varchar(20),
  unit_price INTEGER,
  primary key(product_id)
);
CREATE TABLE sales (
  seller_id INTEGER,
  product_id INTEGER,
  buyer_id INTEGER,
  sale_date date,
  quantity INTEGER,
  price INTEGER,
  foreign key(product_id) references product(product_id)
);


-- insert into product
insert into product values(1,'S8',1000);
insert into product values(2,'G4',800);
insert into product values(3,'iPhone',1400);
-- insert into sales
insert into sales values(1,1,1,'2019-01-21',2,2000);
insert into sales values(1,2,2,'2019-02-17',1,800);
insert into sales values(2,2,3,'2019-06-02',1,800);
insert into sales values(3,3,4,'2019-05-13',2,2800);


-- Q17.Write an SQL query that reports the products that were only sold in the ﬁrst quarter of 2019. That is, between 2019-01-01 and 2019-03-31 inclusive.

select * from product where product_id in (
select B.product_id from
(select product_id,max(sale_date) over (partition by product_id) max_sale_date from sales)B
where B.max_sale_date between '2019-01-01' and '2019-03-3');


-- create [Q.18]
CREATE TABLE views (
  article_id INTEGER,
  author_id INTEGER,
  viewer_id INTEGER,
  view_date date
);

-- insert into views
insert into views values(1,3,5,'2019-08-01');
insert into views values(1,3,6,'2019-08-02');
insert into views values(2,7,7,'2019-08-01');
insert into views values(2,7,6,'2019-08-02');
insert into views values(4,7,1,'2019-07-22');
insert into views values(3,4,4,'2019-07-21');
insert into views values(3,4,4,'2019-07-21');


-- Q18.Write an SQL query to ﬁnd all the authors that viewed at least one of their own articles. Return the result table sorted by id in ascending order.

select distinct A.author_id from views A inner join  views B on A.author_id=B.viewer_id order by A.author_id;



-- create [Q.19]
CREATE TABLE delivery (
  delivery_id INTEGER primary key,
  customer_id INTEGER,
  order_date date,
  customer_pref_delivery_date date
);

-- insert into delivery
insert into delivery values(1,	1,	'2019-08-01', '2019-08-02');
insert into delivery values(2,	5,	'2019-08-02',	'2019-08-02');
insert into delivery values(3,	1,	'2019-08-11',	'2019-08-11');
insert into delivery values(4,	3,	'2019-08-24',	'2019-08-26');
insert into delivery values(5,	4,	'2019-08-21',	'2019-08-22');
insert into delivery values(6,	2,	'2019-08-11',	'2019-08-13');


-- Q19.If the customer's preferred delivery date is the same as the order date, then the order is called immediately; otherwise, it is called scheduled.
--     Write an SQL query to ﬁnd the percentage of immediate orders in the table, rounded to 2 decimal places.

select round((count(case when order_date=customer_pref_delivery_date then 1 else null end )/count(*))*100,2) as percentage from delivery;



-- create [Q.20]
CREATE TABLE ads (
  ad_id INTEGER,
  user_id INTEGER,
  action enum('Clicked', 'Viewed', 'Ignored'),
  primary key(ad_id,user_id)
);

-- insert into ads
insert into ads values(1,	1	,'Clicked');
insert into ads values(2,	2	,'Clicked');
insert into ads values(3,	3	,'Viewed');
insert into ads values(5,	5	,'Ignored');
insert into ads values(1,	7	,'Ignored');
insert into ads values(2,	7	,'Viewed');
insert into ads values(3,	5	,'Clicked');
insert into ads values(1,	4	,'Viewed');
insert into ads values(2,	11,'Viewed');
insert into ads values(1,	2	,'Clicked');

-- Q20.Write an SQL query to ﬁnd the ctr of each Ad. Round ctr to two decimal points.
-- Return the result table ordered by ctr in descending order and by ad_id in ascending order in case of a tie.
 select A.ad_id,case when A.Clicked=0 and A.Viewed=0 then 0 else  round(a.Clicked/(A.Clicked +A.Viewed)*100,2) end as CTR from
 (select ad_id,count(case when action ='Clicked' then 1 else null end) as Clicked,
 count(case when action ='Viewed' then 1 else null end) as Viewed 
 from ads group by ad_id)A order by CTR desc,A.ad_id asc;

-- create [Q.21]
CREATE TABLE employee (
  employee_id INTEGER,
  team_id INTEGER
);

-- insert into employee
insert into employee values(1,	8);
insert into employee values(2,	8);
insert into employee values(3,	8);
insert into employee values(4,	7);
insert into employee values(5,	9);
insert into employee values(6,	9);

-- Q21.Write an SQL query to ﬁnd the team size of each of the employees. Return result table in any order.
select employee_id,count(team_id)over(partition by team_id) as size from employee order by employee_id;
 

-- create [Q.22]
CREATE TABLE countries (
  country_id INTEGER,
  country_name varchar(30),
  primary key(country_id)
);
CREATE TABLE weather (
  country_id INTEGER,
  weather_state INTEGER,
  day date,
  primary key(country_id,day)
);

-- insert into countries
insert into countries values(2,	'USA');
insert into countries values(3,	'Australia');
insert into countries values(7,	'Peru');
insert into countries values(5,	'China');
insert into countries values(8,	'Morocco');
insert into countries values(9,	'Spain');
-- insert into weather
insert into weather values(2,	15,	'2019-11-01');
insert into weather values(2,	12,	'2019-10-28');
insert into weather values(2,	12,	'2019-10-27');
insert into weather values(3,	-2,	'2019-11-10');
insert into weather values(3,	0	, '2019-11-11');
insert into weather values(3,	3	, '2019-11-12');
insert into weather values(5,	16,	'2019-11-07');
insert into weather values(5,	18,	'2019-11-09');
insert into weather values(5,	21,	'2019-11-23');
insert into weather values(7,  25,	'2019-11-28');
insert into weather values(7,	22,	'2019-12-01');
insert into weather values(7,	20,	'2019-12-02');
insert into weather values(8,  25,	'2019-11-05');
insert into weather values(8,	27,	'2019-11-15');
insert into weather values(8,	31,	'2019-11-25');
insert into weather values(9,	7,	'2019-10-23');
insert into weather values(9,	3,	'2019-12-23');
-- Q22.Write an SQL query to ﬁnd the type of weather in each country for November 2019. The type of weather is:
with cte as(
select distinct country_id,avg(weather_state)over(partition by country_id) as Average from weather where month(day)=11
)
select countries.country_name,case 
when Average<=15 then "Cold" 
when Average>=25 then "Hot"
else "Warm"
end as Temperature
from cte join countries on cte.country_id=countries.country_id order by Temperature;


-- create [Q.23]
CREATE TABLE prices (
product_id	int,
start_date	date,
end_date	date,
price	int,
primary key(product_id,start_date,end_date)
);
CREATE TABLE unitsold (
product_id	int,
purchase_date date,
unit int

);

-- insert into prices
insert into prices values(1,	'2019-02-17',	'2019-02-28',	5);
insert into prices values(1,	'2019-03-01',	'2019-03-22',	20);
insert into prices values(2,	'2019-02-01',	'2019-02-20',	15);
insert into prices values(2,	'2019-02-21',	'2019-03-31',	30);
-- insert into unitsold
insert into unitsold values(1,	'2019-02-25',	100);
insert into unitsold values(1,	'2019-03-01',	15);
insert into unitsold values(2,	'2019-02-10',	200);
insert into unitsold values(2,	'2019-03-22',	30);

-- Q23.Write an SQL query to ﬁnd the average selling price for each product. average_price should be rounded to 2 decimal places.
with cte as (
select P.product_id,round((P.price*U.unit)/sum(U.unit)over(partition by U.product_id),2 ) as Average
from prices P 
inner join unitsold U on P.product_id=U.product_id 
and U.purchase_date between P.start_date and P.end_date)
select distinct product_id,sum(Average)over(partition by product_id)as Total_Average from cte;


-- create [Q.24]
CREATE TABLE activity (
player_id	int,
device_id	int,
event_date	date,
games_played	int,
primary key(player_id,event_date)
);


-- insert into activity

insert into activity values(1,	2,	'2016-03-01',	5);
insert into activity values(1,	2,	'2016-05-02',	6);
insert into activity values(2,	3,	'2017-06-25',	1);
insert into activity values(3,	1,	'2016-03-02',	0);
insert into activity values(3,	4,	'2018-07-03',	5);

-- Q24.Write an SQL query to report the ﬁrst login date for each player


select distinct player_id , min(event_date)over (partition by player_id) as mindate from activity;


-- create [Q.25]
CREATE TABLE activity (
player_id	int,
device_id	int,
event_date	date,
games_played	int,
primary key(player_id,event_date)
);


-- insert into activity

insert into activity values(1,	2,	'2016-03-01',	5);
insert into activity values(1,	2,	'2016-05-02',	6);
insert into activity values(2,	3,	'2017-06-25',	1);
insert into activity values(3,	1,	'2016-03-02',	0);
insert into activity values(3,	4,	'2018-07-03',	5);

-- Q.25 Write an SQL query to report the device that is ﬁrst logged in for each player. Return the result table in any order.

with cte as (
 select player_id,min(event_date)as mindate from activity group by player_id
  )
 select cte.player_id,activity.device_id from cte inner join activity on
 activity.player_id=cte.player_id and activity.event_date=cte.mindate;


-- create [Q.26]
create table products(
 product_id int,
 product_name varchar(30),
 product_category varchar(30),
 primary key(product_id)
);

create table orders(
 product_id int,
 order_date date,
 unit int,
 foreign key (product_id) references products(product_id)
);

-- insert into product

insert into products values(1,	'Leetcode Solutions',	'Book');
insert into products values(2,	'Jewels of Stringology','Book');
insert into products values(3,	'HP',	'Laptop');
insert into products values(4,	'Lenovo',	'Laptop');
insert into products values(5,	'Leetcode Kit',	'T-shirt');

-- insert into order

insert into orders values(1,	'2020-02-05'	,60);
insert into orders values(1,	'2020-02-10'	,70);
insert into orders values(2,	'2020-01-18'	,30);
insert into orders values(2,	'2020-02-11'	,80);
insert into orders values(3,	'2020-02-17'	,2);
insert into orders values(3,	'2020-02-24'	,3);
insert into orders values(4,	'2020-03-01'	,20);
insert into orders values(4,	'2020-03-04'	,30);
insert into orders values(4,	'2020-03-04'	,60);
insert into orders values(5,	'2020-02-25'	,50);
insert into orders values(5,	'2020-02-27'	,50);
insert into orders values(5,	'2020-03-01'	,50);


-- Q.26 Write an SQL query to get the names of products that have at least 100 units ordered in February 2020 and their amount.

select distinct P.product_name,sum(O.unit) over(partition by P.product_id) as S from products P  inner join orders O 
on P.product_id=O.product_id where month(O.order_date)=2;

-- create [Q.27]
CREATE TABLE users (
user_id	int,
name	varchar(20),
mail	varchar(30),
primary key(user_id)
);


-- insert into users

insert into users values (1	,'Winston'	,'winston@leetcode.com');
insert into users values (2	,'Jonathan'	,'jonathanisgreat');
insert into users values (3	,'Annabelle' ,'bella-@leetcode.com');
insert into users values (4	,'Sally'	,'sally.come@leetcode.com');
insert into users values (5	,'Marwan'	,'quarz#2020@leetcode.com');
insert into users values (6	,'David'	,'david69@gmail.com');
insert into users values (7	,'Shapiro'	,'.shapo@leetcode.com');
-- Q27.Write an SQL query to ﬁnd the users who have valid emails.

select * from users where mail regexp '^[a-zA-Z]+[a-zA-Z0-9_\\./\\-]{0,}@leetcode.com$';



-- create [Q.28]
CREATE TABLE customers (
customer_id	int,
name	varchar(20),
country	varchar(20),
primary key(customer_id)
);

create TABLE product(
product_id int,
description varchar(20),
price int,
primary key(product_id)
) ;

CREATE TABLE orders (
order_id	int,
customer_id	int,
product_id	int,
order_date	date,
quantity	int,
primary key(order_id),
foreign key (customer_id) references customers(customer_id),
foreign key (product_id) references product(product_id)
);
 

-- insert into customers
insert into customers values(1,'Winston','USA');
insert into customers values(2,'Jonathan','Peru');
insert into customers values(3,'Moustafa','Egypt');
-- insert into product
insert into product values(10,	'LC Phone'	,300);
insert into product values(20,	'LC T-Shirt'	,10);
insert into product values(30,	'LC Book'	,45);
insert into product values(40,	'LC Keychain'	,2);

-- insert into orders
insert into orders values(1, 1, 10, '2020-06-10' ,1);
insert into orders values(2, 1, 20, '2020-07-01' ,1);
insert into orders values(3, 1, 30, '2020-07-08' ,2);
insert into orders values(4, 2, 10, '2020-06-15' ,2);
insert into orders values(5, 2, 40, '2020-07-01' ,10);
insert into orders values(6, 3, 20, '2020-06-24' ,2);
insert into orders values(7, 3, 30, '2020-06-25' ,2);
insert into orders values(9, 3, 30, '2020-05-08' ,3);

-- Q28.Write an SQL query to report the customer_id and customer_name of customers who have spent at least $100 in each month of June and July 2020.

with cte as(
select O.customer_id,sum(P.price*O.quantity) as amount from orders O inner join product P on
O.product_id=P.product_id 
where month(O.order_date) in (6,7)
group by O.customer_id, month(O.order_date) in (6)
)
select cte.customer_id,customers.name from cte
inner join customers on customers.customer_id=cte.customer_id
where cte.amount>=100
group by cte.customer_id
having count(*)>=2;


-- create [Q.29]
CREATE TABLE tvprogram (
program_date date,
content_id int,
channel varchar(20),
primary key(program_date, content_id)

);

create TABLE content (
content_id varchar(20),
title varchar(20),
Kids_content enum ('Y', 'N'),
content_type varchar(20),
primary key(content_id)

) ;


-- insert into tvprogram
insert into tvprogram values('2020-06-10 08:00', 1, 'LC-Channel');
insert into tvprogram values('2020-05-11 12:00', 2, 'LC-Channel');
insert into tvprogram values('2020-05-12 12:00', 3, 'LC-Channel');
insert into tvprogram values('2020-05-13 14:00', 4, 'Disney Ch');
insert into tvprogram values('2020-06-18 14:00', 4, 'Disney Ch');
insert into tvprogram values('2020-07-15 16:00', 5, 'Disney Ch');
-- insert into content
insert into content values(1, 'Leetcode Movie', 'N', 'Movies');
insert into content values(2, 'Alg. for Kids', 'Y', 'Series');
insert into content values(3, 'Database Sols', 'N', 'Series');
insert into content values(4, 'Aladdin', 'Y', 'Movies');
insert into content values(5, 'Cinderella', 'Y', 'Movies');


-- Q29.Write an SQL query to report the distinct titles of the kid-friendly movies streamed in June 2020

select title from content where content_id in (
select content_id from tvprogram  where month(program_date)=6 and year(program_date)=2020)
and Kids_content='Y';


-- create [Q.30]
CREATE TABLE nvp(
id int,
year int,
np int,
primary key(id, year)
);

create TABLE queries (
id int,
year int,
primary key(id, year)
) ;



-- insert into nvp

insert into nvp values(1, 2018, 100);
insert into nvp values(7, 2020, 30);
insert into nvp values(13, 2019, 40);
insert into nvp values(1, 2019, 113);
insert into nvp values(2, 2008, 121);
insert into nvp values(3, 2009, 12);
insert into nvp values(11, 2020, 99);
insert into nvp values(7, 2019, 0);

-- insert into queries

insert into queries values(1, 2019);
insert into queries values(2, 2008);
insert into queries values(3, 2009);
insert into queries values(7, 2018);
insert into queries values(7, 2019);
insert into queries values(7, 2020);
insert into queries values(13, 2019);


-- Q.30.Write an SQL query to find the npv of each query of the Queries table.


select Q.*,ifnull(N.np,0) from queries Q left join nvp N on N.id=Q.id and N.year=Q.year;





-- create [Q.32]
CREATE TABLE employee(
id int,
name varchar(20),
primary key(id)
);

create TABLE employeeuni(
id int,
unique_id int,
primary key(id, unique_id)
) ;


-- insert into employee
insert into employee values(1, 'Alice');
insert into employee values(7, 'Bob');
insert into employee values(11, 'Meir');
insert into employee values(90, 'Winston');
insert into employee values(3, 'Jonathan');
-- insert into employeeuni

insert into employeeuni values(3, 1);
insert into employeeuni values(11, 2);
insert into employeeuni values(90, 3);

-- Q.32 Write an SQL query to show the unique ID of each user, If a user does not have a unique ID replace just
-- show null.
select U.unique_id,E.name from employee E left join employeeuni U on E.id=U.id;


-- create [Q.33]
CREATE TABLE users(
id int,
name varchar(20),
primary key(id)
);

create TABLE rides (
id int,
user_id int,
distance int,
primary key(id)
) ;

 

-- insert into users
insert into users values(1, 'Alice');
insert into users values(2, 'Bob');
insert into users values(3, 'Alex');
insert into users values(4, 'Donald');
insert into users values(7, 'Lee');
insert into users values(13, 'Jonathan');
insert into users values(19, 'Elvis');
-- insert into rides
insert into rides values(1, 1, 120);
insert into rides values(2, 2, 317);
insert into rides values(3, 3, 222);
insert into rides values(4, 7, 100);
insert into rides values(5, 13, 312);
insert into rides values(6, 19, 50);
insert into rides values(7, 7, 120);
insert into rides values(8, 19, 400);
insert into rides values(9, 7, 230);



-- Q.33 Write an SQL query to report the distance travelled by each user.
with cte as(
select U.name ,sum(R.distance) as total from users U 
left join rides R on U.id=R.user_id 
group by U.id
)
select name,ifnull(total,0) from cte  order by total desc,name asc;


-- create [Q.34]
create table products(
 product_id int,
 product_name varchar(30),
 product_category varchar(30),
 primary key(product_id)
);

create table orders(
 product_id int,
 order_date date,
 unit int,
 foreign key (product_id) references products(product_id)
);

-- insert into product

insert into products values(1,	'Leetcode Solutions',	'Book');
insert into products values(2,	'Jewels of Stringology','Book');
insert into products values(3,	'HP',	'Laptop');
insert into products values(4,	'Lenovo',	'Laptop');
insert into products values(5,	'Leetcode Kit',	'T-shirt');

-- insert into order

insert into orders values(1,	'2020-02-05'	,60);
insert into orders values(1,	'2020-02-10'	,70);
insert into orders values(2,	'2020-01-18'	,30);
insert into orders values(2,	'2020-02-11'	,80);
insert into orders values(3,	'2020-02-17'	,2);
insert into orders values(3,	'2020-02-24'	,3);
insert into orders values(4,	'2020-03-01'	,20);
insert into orders values(4,	'2020-03-04'	,30);
insert into orders values(4,	'2020-03-04'	,60);
insert into orders values(5,	'2020-02-25'	,50);
insert into orders values(5,	'2020-02-27'	,50);
insert into orders values(5,	'2020-03-01'	,50);

-- Q.34 Write an SQL query to get the names of products that have at least 100 units ordered in February 2020
-- and their amount.


with cte as(
select product_id,sum(unit) as total from orders where month(order_date)=2
group by product_id
having sum(unit)>=100
)
select P.product_id,cte.total,P.product_name from cte inner join products P on P.product_id=cte.product_id;


-- create [Q.35]
CREATE TABLE movies (
movie_id int,
title varchar(20),
primary key(movie_id)
);

create TABLE users(
user_id int,
name varchar(20),
primary key(user_id)
) ;

CREATE TABLE movierating  (
movie_id int,
user_id int,
rating int,
created_at date,
primary key(movie_id, user_id)
);
 

-- insert into movies
insert into movies values(1, 'Avengers');
insert into movies values(2, 'Frozen 2');
insert into movies values(3, 'Joker');
-- insert into users
insert into users values(1, 'Daniel');
insert into users values(2, 'Monica');
insert into users values(3, 'Maria');
insert into users values(4, 'James');

-- insert into movierating

insert into movierating values(1, 1, 3, '2020-01-12');
insert into movierating values(1, 2, 4, '2020-02-11');
insert into movierating values(1, 3, 2, '2020-02-12');
insert into movierating values(1, 4, 1, '2020-01-01');
insert into movierating values(2, 1, 5, '2020-02-17');
insert into movierating values(2, 2, 2, '2020-02-01');
insert into movierating values(2, 3, 2, '2020-03-01');
insert into movierating values(3, 1, 3, '2020-02-22');
insert into movierating values(3, 2, 4, '2020-02-25');

-- Q.35 Write an SQL query to:
-- ● Find the name of the user who has rated the greatest number of movies. In case of a tie,
-- return the lexicographically smaller user name.
-- ● Find the movie name with the highest average rating in February 2020. In case of a tie, return
-- the lexicographically smaller movie name.

SELECT U.NAME 
FROM users U LEFT JOIN movierating MR 
ON U.user_id=MR.user_id
GROUP BY NAME
ORDER BY COUNT(MR.rating) DESC ,NAME LIMIT 1;

SELECT M.title
 FROM movies M LEFT JOIN movierating MR 
 ON M.movie_id=MR.movie_id
 GROUP BY title
 ORDER BY AVG(MR.rating) DESC ,title desc limit 1
 ;


-- create [Q.36]
CREATE TABLE users(
id int,
name varchar(20),
primary key(id)
);

create TABLE rides (
id int,
user_id int,
distance int,
primary key(id)
) ;

 

-- insert into users
insert into users values(1, 'Alice');
insert into users values(2, 'Bob');
insert into users values(3, 'Alex');
insert into users values(4, 'Donald');
insert into users values(7, 'Lee');
insert into users values(13, 'Jonathan');
insert into users values(19, 'Elvis');
-- insert into rides
insert into rides values(1, 1, 120);
insert into rides values(2, 2, 317);
insert into rides values(3, 3, 222);
insert into rides values(4, 7, 100);
insert into rides values(5, 13, 312);
insert into rides values(6, 19, 50);
insert into rides values(7, 7, 120);
insert into rides values(8, 19, 400);
insert into rides values(9, 7, 230);

 

 

-- Q.36 Write an SQL query to report the distance travelled by each user.

with cte as(
select U.name ,sum(R.distance) as total from users U 
left join rides R on U.id=R.user_id 
group by U.id
)
select name,ifnull(total,0) from cte  order by total desc,name asc;

-- create [Q.37]
CREATE TABLE employee(
id int,
name varchar(20),
primary key(id)
);

create TABLE employeeuni(
id int,
unique_id int,
primary key(id, unique_id)
) ;


-- insert into employee
insert into employee values(1, 'Alice');
insert into employee values(7, 'Bob');
insert into employee values(11, 'Meir');
insert into employee values(90, 'Winston');
insert into employee values(3, 'Jonathan');
-- insert into employeeuni

insert into employeeuni values(3, 1);
insert into employeeuni values(11, 2);
insert into employeeuni values(90, 3);

-- Q.37 Write an SQL query to show the unique ID of each user, If a user does not have a unique ID replace just
-- show null.
select U.unique_id,E.name from employee E left join employeeuni U on E.id=U.id;


-- create [Q.38]
CREATE TABLE department(
id int,
name varchar(30),
primary key(id)
);

create TABLE student (
id int,
name varchar(30),
department_id int,
primary key(id)
) ;


-- insert into department
insert into department values(1, 'Electrical Engineering');
insert into department values(7, 'Computer Engineering');
insert into department values(13, 'Business Administration');
-- insert into student
insert into student values(23, 'Alice', 1);
insert into student values(1, 'Bob', 7);
insert into student values(5, 'Jennifer', 13);
insert into student values(2, 'John', 14);
insert into student values(4, 'Jasmine', 77);
insert into student values(3, 'Steve', 74);
insert into student values(6, 'Luis', 1);
insert into student values(8, 'Jonathan', 7);
insert into student values(7, 'Daiana', 33);
insert into student values(11, 'Madelynn', 1);

-- Q.38 Write an SQL query to find the id and the name of all students who are enrolled in departments that no
-- longer exist.

select S.id,S.name from department D right join student S on D.id=S.department_id
where D.id is null;



-- create [Q.39]
CREATE TABLE calls (
from_id int,
to_id int,
duration int
);


-- insert into calls
insert into calls values(1, 2, 59);
insert into calls values(2, 1, 11);
insert into calls values(1, 3, 20);
insert into calls values(3, 4, 100);
insert into calls values(3, 4, 200);
insert into calls values(3, 4, 200);
insert into calls values(4, 3, 499);

-- Q.39 Write an SQL query to report the number of calls and the total call duration between each pair of
-- distinct persons (person1, person2) where person1 < person2.
with cte as(
select from_id,to_id,sum(duration)as duration,count(*) as count_dur from calls 
where from_id>to_id
group by from_id ,to_id
union all
select to_id,from_id,sum(duration),count(*) as count_dur from calls 
where from_id<to_id
group by from_id ,to_id
)
select to_id,from_id,sum(count_dur),sum(duration) from cte group by from_id,to_id
;

-- create [Q.40]
CREATE TABLE prices (
product_id	int,
start_date	date,
end_date	date,
price	int,
primary key(product_id,start_date,end_date)
);
CREATE TABLE unitsold (
product_id	int,
purchase_date date,
unit int

);

-- insert into prices
insert into prices values(1,	'2019-02-17',	'2019-02-28',	5);
insert into prices values(1,	'2019-03-01',	'2019-03-22',	20);
insert into prices values(2,	'2019-02-01',	'2019-02-20',	15);
insert into prices values(2,	'2019-02-21',	'2019-03-31',	30);
-- insert into unitsold
insert into unitsold values(1,	'2019-02-25',	100);
insert into unitsold values(1,	'2019-03-01',	15);
insert into unitsold values(2,	'2019-02-10',	200);
insert into unitsold values(2,	'2019-03-22',	30);

-- Q40.Write an SQL query to ﬁnd the average selling price for each product. average_price should be rounded to 2 decimal places.
with cte as (
select P.product_id,round((P.price*U.unit)/sum(U.unit)over(partition by U.product_id),2 ) as Average
from prices P 
inner join unitsold U on P.product_id=U.product_id 
and U.purchase_date between P.start_date and P.end_date)
select distinct product_id,sum(Average)over(partition by product_id)as Total_Average from cte;


-- create [Q.41]
CREATE TABLE warehouse(
name varchar(20),
product_id int,
units int,
primary key(name,product_id)
);

create TABLE products (
product_id int,
product_name varchar(20),
Width int,
Length int,
Height int,
primary key(product_id)
) ;


-- insert into warehouse
insert into warehouse values('LCHouse1' ,1 ,1);
insert into warehouse values('LCHouse1' ,2 ,10);
insert into warehouse values('LCHouse1' ,3 ,5);
insert into warehouse values('LCHouse2' ,1 ,2);
insert into warehouse values('LCHouse2' ,2 ,2);
insert into warehouse values('LCHouse3' ,4 ,1);
-- insert into products
insert into products values(1, 'LC-TV', 5, 50, 40);
insert into products values(2, 'LC-KeyChain', 5, 5, 5);
insert into products values(3, 'LC-Phone', 2, 10, 10);
insert into products values(4, 'LC-T-Shirt', 4, 10, 20);


-- Q.41 Write an SQL query to report the number of cubic feet of volume the inventory occupies in each
-- warehouse.
select W.name,sum(P.Width*P.Height*P.Length*W.units)as volume from warehouse W inner join products P on W.product_id=P.product_id
group by W.name;

-- create [Q.42]
CREATE TABLE sales (
sale_date date,
fruit enum('apples','oranges'),
sold_num int ,
primary key(sale_date, fruit)
);



-- insert into 
insert into sales values('2020-05-01' ,'apples', 10);
insert into sales values('2020-05-01' ,'oranges', 8);
insert into sales values('2020-05-02' ,'apples', 15);
insert into sales values('2020-05-02' ,'oranges', 15);
insert into sales values('2020-05-03' ,'apples', 20);
insert into sales values('2020-05-03' ,'oranges', 0);
insert into sales values('2020-05-04' ,'apples', 15);
insert into sales values('2020-05-04' ,'oranges', 16);

-- Q.42Write an SQL query to report the difference between the number of apples and oranges sold each day.
with cte as (
select *,
case when fruit='apples' then sold_num*1
else sold_num*-1
end as derived_sold_num from sales
)
select sale_date , sum(derived_sold_num)  from cte group by sale_date;

-- create [Q.43]
CREATE TABLE activity (
player_id int,
device_id int,
event_date date,
games_played int,
primary key(player_id, event_date)
);

-- insert into 
insert into activity values(1, 2, '2016-03-01', 5);
insert into activity values(1, 2, '2016-03-02', 6);
insert into activity values(2, 3, '2017-06-25', 1);
insert into activity values(3, 1, '2016-03-02', 0);
insert into activity values(3, 4, '2018-07-03', 5);

-- Q.43 Write an SQL query to report the fraction of players that logged in again on the day after the day they
-- first logged in, rounded to 2 decimal places.
with cte as(
select player_id,event_date as curr_date,
lead(event_date) over(partition by player_Id order by event_date) as next_date
from activity
)
select 
round(count(case when datediff(next_date,curr_date)=1 then 1 else null end)/count(distinct player_id),2) 
as fraction
from cte;


-- create [Q.44]
CREATE TABLE employee(
id int,
name varchar(20),
department varchar(20),
manager_id int,
primary key(id)
);



-- insert into employee
insert into employee values(101, 'John', 'A', null);
insert into employee values(102, 'Dan', 'A', 101);
insert into employee values(103, 'James', 'A', 101);
insert into employee values(104, 'Amy', 'A', 101);
insert into employee values(105, 'Anne', 'A', 101);
insert into employee values(106, 'Ron', 'B', 101);

-- Q.44 Write an SQL query to report the managers with at least five direct reports

with cte as(
select m.id as manager_id,m.name as manager_name from employee e inner
 join employee m
on m.id=e.manager_id 
)
select manager_name as name from cte group by manager_name having count(*)>=5;


-- create [Q.45]
create TABLE student(
student_id int,
student_name varchar(20),
gender varchar(20),
dept_id int,
primary key(student_id)
) ;

CREATE TABLE department (
dept_id int,
dept_name varchar(20),
primary key(dept_id)
);
 

-- insert into student
insert into student values(1 ,'Jack' ,'M', 1);
insert into student values(2 ,'Jane' ,'F',  1);
insert into student values(3 ,'Mark' ,'M',  2);
-- insert into 

insert into department values(1, 'Engineering');
insert into department values(2, 'Science');
insert into department values(3, 'Law');


-- Q.45 Write an SQL query to report the respective department name and number of students majoring in
-- each department for all departments in the Department table (even ones with no current students).

select D.dept_name,count(S.student_id) from department D left join student S on  D.dept_id=S.dept_id
group by D.dept_name;



-- create [Q.46]
CREATE TABLE customer(
customer_id int,
product_key int
);

create TABLE product(
product_key int,
primary key(product_key)
) ;



-- insert into customer
insert into customer values(1, 5);
insert into customer values(2, 6);
insert into customer values(3, 5);
insert into customer values(3, 6);
insert into customer values(1, 6);
-- insert into product
insert into product values(5);
insert into product values(6);


-- Q.46 Write an SQL query to report the customer ids from the Customer table that bought all the products in
-- the Product table.
with cte as(
select C.customer_id,count(*) as prod_count from customer C right join product P on C.product_key=P.product_key
group by C.customer_id
)
select customer_id from cte where prod_count=(select distinct count(*) from product);


-- create [Q.47]
CREATE TABLE project(
project_id int,
employee_id int,
primary key(project_id, employee_id)
);

create TABLE employee (
employee_id int,
name varchar(20),
experience_years int,
primary key(employee_id)
) ;

-- insert into project 
insert into project values(1, 1);
insert into project values(1, 2);
insert into project values(1, 3);
insert into project values(2, 1);
insert into project values(2, 4);

-- insert into employee 

insert into employee values(1, 'Khaled', 3);
insert into employee values(2, 'Ali', 2);
insert into employee values(3, 'John', 3);
insert into employee values(4, 'Doe', 2);

-- Q.47 Write an SQL query that reports the most experienced employees in each project. In case of a tie,
-- report all employees with the maximum number of experience years
with cte as(
select p.project_id,p.employee_id,e.experience_years
from project p left join employee e
on p.employee_id=e.employee_id
)
select project_id,employee_id from cte c where experience_years=
(select max(experience_years) from cte where c.project_id=project_id group by project_id)
;

-- create [Q.48]
CREATE TABLE books (
book_id int,
name varchar(30),
available_from date,
primary key(book_id)
);

create TABLE orders(
order_id int,
book_id int,
quantity int,
dispatch_date date,
primary key(order_id),
foreign key (book_id) references books(book_id)
) ;

-- insert into  books

-- insert into orders

-- Q.48 Write an SQL query that reports the books that have sold less than 10 copies in the last year,
-- excluding books that have been available for less than one month from today. Assume today is
-- 2019-06-23.

-- Data missing


-- create [Q.49]
CREATE TABLE enrollments (
student_id int,
course_id int,
grade int,
primary key(student_id, course_id)
);

-- insert into 
insert into enrollments values(2, 2, 95);
insert into enrollments values(2, 3, 95);
insert into enrollments values(1, 1, 90);
insert into enrollments values(1, 2, 99);
insert into enrollments values(3, 1, 80);
insert into enrollments values(3, 2, 75);
insert into enrollments values(3, 3, 82);

-- Q.49 Write a SQL query to find the highest grade with its corresponding course for each student. In case of
-- a tie, you should find the course with the smallest course_id.
-- Return the result table ordered by student_id in ascending order.
select A.student_id,A.course_id,A.grade from (
select *,rank()over(partition by student_id order by grade desc,course_id asc)r 
from enrollments)A where r=1;


-- create [Q.50]
CREATE TABLE teams (
team_id int,
team_name varchar(20),
primary key(team_id int
);

create TABLE matches(
match_id int,
host_team int,
guest_team int,
host_goals int,
guest_goals int,
primary key(match_id)
) ;


-- insert into teams

-- insert into  matches

-- Q.50 Write an SQL query to find the winner in each group.

-- Data not matching
