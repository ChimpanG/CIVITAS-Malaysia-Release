/*
	Localisation
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT OR REPLACE INTO BaseGameText
		(Tag,	Text)
VALUES

-----------------------------------------------
-- Civilization
-----------------------------------------------

	("LOC_CIVILIZATION_CVS_MALAYSIA_NAME",			"Malaysia"		),
	("LOC_CIVILIZATION_CVS_MALAYSIA_DESCRIPTION",	"Malay Empire"	),
	("LOC_CIVILIZATION_CVS_MALAYSIA_ADJECTIVE",  	"Malay"			),
	
-----------------------------------------------
-- UA
-----------------------------------------------

	("LOC_TRAIT_CIVILIZATION_CVS_MALAYSIA_UA_NAME",		"Alam Melayu"	),
	("LOC_TRAIT_CIVILIZATION_CVS_MALAYSIA_UA_DESCRIPTION",	
	"[ICON_Envoy] Envoys awarded for completing a [ICON_CVS_Malaysia_CSQ] City-State Quest are doubled if another Civilization is its suzerain. Domestic [ICON_TradeRoute] Trade Routes yield +1 [ICON_Culture] Culture for each Fishing Boat at the destination and international [ICON_TradeRoute] Trade Routes yield +2 [ICON_Gold] Gold for each Fishing Boat in the origin City."	),
	
-----------------------------------------------
-- UI
-----------------------------------------------

	("LOC_IMPROVEMENT_CVS_MALAYSIA_UI_NAME",	"Rumah"	),
	("LOC_IMPROVEMENT_CVS_MALAYSIA_UI_DESCRIPTION",
	"Unlocks the Builder ability to construct the Rumah, unique to Malaysia.[NEWLINE][NEWLINE]Yields +2 [ICON_Culture] Culture and +1 [ICON_Housing] Housing. Receives +1 [ICON_Food] Food for each adjacent Plantation (Requires Feudalism) or when adjacent to a river, and +1 [ICON_Culture] Culture for every two adjacent Rumah improvements (Requires Exploration). May be built on Marsh or flat land."	),

-----------------------------------------------
-- UU
-----------------------------------------------

	("LOC_UNIT_CVS_MALAYSIA_UU_NAME",	"Pesilat"	),
	("LOC_UNIT_CVS_MALAYSIA_UU_DESCRIPTION",	 
	"A melee unit unique to Malaysia. Costs more than the Swordsman it replaces, but has higher [ICON_Strength] Combat Strength. Ignores enemy Zone of Control and cannot be seen by enemy Units unless adjacent to them."),

-----------------------------------------------
-- Cities
-----------------------------------------------

	("LOC_CITY_NAME_KADARAM",  "Kadaram"),
	("LOC_CITY_NAME_JOHOR",  "Johor"),
	("LOC_CITY_NAME_MALACCA",  "Malacca"),
	("LOC_CITY_NAME_KELANTAN",  "Kelantan"),
	("LOC_CITY_NAME_SINGAPURA",  "Singapura"),
	("LOC_CITY_NAME_LANGKASUKA",  "Langkasuka"),
	("LOC_CITY_NAME_TAMBRALINGA",  "Tambralinga"),
	("LOC_CITY_NAME_TAKOLA",  "Takola"),
	("LOC_CITY_NAME_PERAK",  "Perak"),
	("LOC_CITY_NAME_KELANG",  "Kelang"),
	("LOC_CITY_NAME_PENANG",  "Penang"),
	("LOC_CITY_NAME_GUANTOLI",  "Guantoli"),
	("LOC_CITY_NAME_JAMBI",  "Jambi"), -- Already exists @ Indonesia
	("LOC_CITY_NAME_PALEMBANG",  "Palembang"), -- Already exists @ Indonesia
	("LOC_CITY_NAME_PATTANI",  "Pattani"),
	("LOC_CITY_NAME_BIAWAK_BUSUK",  "Biawak Busuk"),
	("LOC_CITY_NAME_GANGGA_NEGARA",  "Gangga Negara"),
	("LOC_CITY_NAME_GUNUNG_JERAI",  "Gunung Jerai"),
	("LOC_CITY_NAME_KOTA_BURUK",  "Kota Buruk"),
	("LOC_CITY_NAME_SABAH",  "Sabah"),
	("LOC_CITY_NAME_PAHANG",  "Pahang"),
	("LOC_CITY_NAME_THARRA",  "Tharra"),
	("LOC_CITY_NAME_PALANDA",  "Palanda"),
	("LOC_CITY_NAME_KALONKA",  "Kalonka"),
	("LOC_CITY_NAME_LIGOR",  "Ligor"),
	("LOC_CITY_NAME_ACEH",  "Aceh"),
	("LOC_CITY_NAME_SARAWAK",  "Sarawak"),
	("LOC_CITY_NAME_RIAU",  "Riau"),
	("LOC_CITY_NAME_KUANTAN",  "Kuantan"),
	("LOC_CITY_NAME_TERENGGANU",  "Terengganu"),
	("LOC_CITY_NAME_BANTAM",  "Bantam"),
	("LOC_CITY_NAME_MAKASSAR",  "Makassar"), -- Already exists @ Indonesia
	("LOC_CITY_NAME_BATU",  "Batu"),
	("LOC_CITY_NAME_KUALA_BERANG",  "Kuala Berang"),
	("LOC_CITY_NAME_AMBON",  "Ambon"),
	("LOC_CITY_NAME_KUALA_LUMPUR",  "Kuala Lumpur"),
	("LOC_CITY_NAME_IPOH",  "Ipoh"),
	("LOC_CITY_NAME_KOTA_BHARU",  "Kota Bharu"),
	("LOC_CITY_NAME_SUNGAI_UJONG",  "Sungai Ujong"),
	("LOC_CITY_NAME_BAGAN",  "Bagan"),
	("LOC_CITY_NAME_PEKANBARU",  "Pekanbaru"),
	("LOC_CITY_NAME_ALOR_SETAR",  "Alor Setar"),
	("LOC_CITY_NAME_PAGOH",  "Pagoh"),
	
-----------------------------------------------
-- Citizens
-----------------------------------------------
	
	("LOC_CITIZEN_CVS_MALAYSIA_MALE_1",			"Basuki"		),
	("LOC_CITIZEN_CVS_MALAYSIA_MALE_2",			"Bayu"			),
	("LOC_CITIZEN_CVS_MALAYSIA_MALE_3",			"Eko"			),
	("LOC_CITIZEN_CVS_MALAYSIA_MALE_4",			"Elyas"			),
	("LOC_CITIZEN_CVS_MALAYSIA_MALE_5",			"Indra"			),
	("LOC_CITIZEN_CVS_MALAYSIA_MALE_6",			"Jebat"			),
	("LOC_CITIZEN_CVS_MALAYSIA_MALE_7",			"Megat"			),
	("LOC_CITIZEN_CVS_MALAYSIA_MALE_8",			"Sabtu"			),
	("LOC_CITIZEN_CVS_MALAYSIA_MALE_9",			"Ujang"			),
	("LOC_CITIZEN_CVS_MALAYSIA_MALE_10",		"Tuah"			),
	("LOC_CITIZEN_CVS_MALAYSIA_FEMALE_1",		"Aqilah"		),
	("LOC_CITIZEN_CVS_MALAYSIA_FEMALE_2",		"Bulan"			),
	("LOC_CITIZEN_CVS_MALAYSIA_FEMALE_3",		"Cahya"			),
	("LOC_CITIZEN_CVS_MALAYSIA_FEMALE_4",		"Kartika"		),
	("LOC_CITIZEN_CVS_MALAYSIA_FEMALE_5",		"Mahsuri"		),
	("LOC_CITIZEN_CVS_MALAYSIA_FEMALE_6",		"Nurin"			),
	("LOC_CITIZEN_CVS_MALAYSIA_FEMALE_7",		"Siti"			),
	("LOC_CITIZEN_CVS_MALAYSIA_FEMALE_8",		"Tijah"			),
	("LOC_CITIZEN_CVS_MALAYSIA_FEMALE_9",		"Yati"			),
	("LOC_CITIZEN_CVS_MALAYSIA_FEMALE_10",		"Zulaikha"		),
	
-----------------------------------------------
-- Info
-----------------------------------------------

	("LOC_CIVINFO_CVS_MALAYSIA_LOCATION",	"Southeast Asia"	),
	("LOC_CIVINFO_CVS_MALAYSIA_SIZE",		"330,803 km²"		),
	("LOC_CIVINFO_CVS_MALAYSIA_POPULATION",	"c. 31.2 million"	),
	("LOC_CIVINFO_CVS_MALAYSIA_CAPITAL",	"Kuala Lumpur"		),

-----------------------------------------------
-- Pedia
-----------------------------------------------

	("LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_MALAYSIA_CHAPTER_HISTORY_PARA_1",		
	"Extending well into the western zone of the Southeast Asian archipelago, the Malay Peninsula has long constituted a critical link between the mainland and the islands of Southeast Asia. Because Malaysia itself is divided between the two regions, the history of the country can be understood only within a broad geographic context.The Strait of Malacca, narrowly separating the peninsula from the archipelago, has been a crossroads for peoples, cultures, and trade passing through or taking root in both areas. Influences from China, India, the Middle East, and, later, Europe followed the maritime trade. Peninsular Malaysia and the two states of East Malaysia, Sarawak and Sabah, have shared many historical patterns, but each region also has developed in unique ways."),	
	("LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_MALAYSIA_CHAPTER_HISTORY_PARA_2",		
	"Malaysia developed an international reputation as the home of renowned seafarers. As its reputation grew, however, Malaysia became increasingly exposed to cultural influences from surrounding powers. Small Malay kingdoms started to appear in the 2nd or 3rd century CE, a time when Indian traders and priests began traveling the maritime routes, bringing with them Indian concepts of religion, government, and the arts. Over many centuries the peoples of the region, especially those within the royal courts, synthesized Indian and indigenous ideas, making selective use of Indian models in shaping their political and cultural patterns."),	
	("LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_CVS_MALAYSIA_CHAPTER_HISTORY_PARA_3",	
	"Alam Melayu (or ‘The Malay World’) is a concept and expression derived from varied interpretations of Malayness largely based on the prevalent Malay cultural influence, manifested through the spread of Malay language in Southeast Asia as observed by different colonial powers during the Age of Discovery. Between the 7th and 13th centuries many of the region’s small, often prosperous maritime trading states came under the loose control of Srivijaya, the great Indianized empire based in Sumatra. At various times, other Indianized powers of Southeast Asia including the Khmer empire based at Angkor, the Tai kingdom of Ayutthaya, and the Majapahit empire centred in eastern Java, also claimed suzerainty in the region. These early cultural forces in Malaysia left a living legacy, traces of which are still evident in the political ideas, social structures, rituals, language, arts, and other traditions of Malay Muslims."),
	
	("LOC_PEDIA_IMPROVEMENTS_PAGE_IMPROVEMENT_CVS_MALAYSIA_UI_CHAPTER_HISTORY_PARA_1",	
	"Rumah Melayu are traditional dwellings, originating before the arrival of foreign influences, and constructed by the indigenous ethnic Malay of the Malay Peninsula, Sumatra and Borneo. Traditional timber houses incorporated design principals relevant in contemporary architecture such as shading and ventilation, qualities present in the basic house features. Although Rumah Melayu have a diversity of styles according to each state and sub-culture, the main characteristic of a typical Rumah is that it is built on stilts to avoid wild animals, flooding and for added ventilation. "),

	("LOC_PEDIA_UNITS_PAGE_UNIT_CVS_MALAYSIA_UU_CHAPTER_HISTORY_PARA_1",  	
	"The Silat tradition is mostly oral, having been passed down almost entirely by word of mouth. In the absence of written records, much of its history is known only through myth and archaeological evidence. The earliest weapons found in the Nusantara were sharpened stone tools such as axes."	),
	("LOC_PEDIA_UNITS_PAGE_UNIT_CVS_MALAYSIA_UU_CHAPTER_HISTORY_PARA_2",  	
	"Some Silat practitioners, known as Pesilat, became nomadic boat-dwellers in Southeast Asia and south-eastern China and were described as fierce warriors armed with an arsenal of weapons who would attack passing boats around Singapore, Sumatra, Java, and the South China Sea. Local rulers like Iskandar Shah of Malacca, relied on the local boat-people to maintain control of their territory, and they played a key role in the region's power struggles even into the colonial era."	);