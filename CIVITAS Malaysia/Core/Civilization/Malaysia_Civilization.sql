/*
	Civilization
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,							Kind				)
VALUES	('CIVILIZATION_CVS_MALAYSIA',	'KIND_CIVILIZATION'	);
		
-----------------------------------------------
-- Civilizations
-----------------------------------------------

INSERT INTO	Civilizations
		(CivilizationType,				Name,									Description,									Adjective,									StartingCivilizationLevelType,	RandomCityNameDepth,	Ethnicity			)
VALUES	('CIVILIZATION_CVS_MALAYSIA',	'LOC_CIVILIZATION_CVS_MALAYSIA_NAME',	'LOC_CIVILIZATION_CVS_MALAYSIA_DESCRIPTION',	'LOC_CIVILIZATION_CVS_MALAYSIA_ADJECTIVE',	'CIVILIZATION_LEVEL_FULL_CIV',	10,						'ETHNICITY_ASIAN' 	);
		
-----------------------------------------------
-- CityNames
-----------------------------------------------

INSERT INTO	CityNames
		(CivilizationType,			 CityName )
VALUES	('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_KADARAM'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_JOHOR'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_MALACCA'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_KELANTAN'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_SINGAPURA'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_LANGKASUKA'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_TAMBRALINGA'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_TAKOLA'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_PERAK'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_KELANG'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_PENANG'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_GUANTOLI'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_JAMBI'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_PALEMBANG'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_PATTANI'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_BIAWAK_BUSUK'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_GANGGA_NEGARA'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_GUNUNG_JERAI'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_KOTA_BURUK'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_SABAH'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_PAHANG'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_THARRA'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_PALANDA'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_KALONKA'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_LIGOR'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_ACEH'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_SARAWAK'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_RIAU'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_KUANTAN'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_TERENGGANU'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_BANTAM'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_MAKASSAR'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_BATU'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_KUALA_BERANG'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_AMBON'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_KUALA_LUMPUR'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_IPOH'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_KOTA_BHARU'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_SUNGAI_UJONG'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_BAGAN'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_PEKANBARU'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_ALOR_SETAR'),
		('CIVILIZATION_CVS_MALAYSIA', 'LOC_CITY_NAME_PAGOH');
					
-----------------------------------------------
-- CivilizationCitizenNames
-----------------------------------------------

INSERT INTO	CivilizationCitizenNames
		(CivilizationType,				CitizenName,							Female	)
VALUES	('CIVILIZATION_CVS_MALAYSIA',	'LOC_CITIZEN_CVS_MALAYSIA_MALE_1',		0 		),
		('CIVILIZATION_CVS_MALAYSIA',	'LOC_CITIZEN_CVS_MALAYSIA_MALE_2',		0 		),
		('CIVILIZATION_CVS_MALAYSIA',	'LOC_CITIZEN_CVS_MALAYSIA_MALE_3',		0 		),
		('CIVILIZATION_CVS_MALAYSIA',	'LOC_CITIZEN_CVS_MALAYSIA_MALE_4',		0 		),
		('CIVILIZATION_CVS_MALAYSIA',	'LOC_CITIZEN_CVS_MALAYSIA_MALE_5',		0 		),
		('CIVILIZATION_CVS_MALAYSIA',	'LOC_CITIZEN_CVS_MALAYSIA_MALE_6',		0 		),
		('CIVILIZATION_CVS_MALAYSIA',	'LOC_CITIZEN_CVS_MALAYSIA_MALE_7',		0 		),
		('CIVILIZATION_CVS_MALAYSIA',	'LOC_CITIZEN_CVS_MALAYSIA_MALE_8',		0 		),
		('CIVILIZATION_CVS_MALAYSIA',	'LOC_CITIZEN_CVS_MALAYSIA_MALE_9',		0 		),
		('CIVILIZATION_CVS_MALAYSIA',	'LOC_CITIZEN_CVS_MALAYSIA_MALE_10',		0 		),
		('CIVILIZATION_CVS_MALAYSIA',	'LOC_CITIZEN_CVS_MALAYSIA_FEMALE_1',	1 		),
		('CIVILIZATION_CVS_MALAYSIA',	'LOC_CITIZEN_CVS_MALAYSIA_FEMALE_2',	1 		),
		('CIVILIZATION_CVS_MALAYSIA',	'LOC_CITIZEN_CVS_MALAYSIA_FEMALE_3',	1 		),
		('CIVILIZATION_CVS_MALAYSIA',	'LOC_CITIZEN_CVS_MALAYSIA_FEMALE_4',	1 		),
		('CIVILIZATION_CVS_MALAYSIA',	'LOC_CITIZEN_CVS_MALAYSIA_FEMALE_5',	1 		),
		('CIVILIZATION_CVS_MALAYSIA',	'LOC_CITIZEN_CVS_MALAYSIA_FEMALE_6',	1 		),
		('CIVILIZATION_CVS_MALAYSIA',	'LOC_CITIZEN_CVS_MALAYSIA_FEMALE_7',	1 		),
		('CIVILIZATION_CVS_MALAYSIA',	'LOC_CITIZEN_CVS_MALAYSIA_FEMALE_8',	1 		),
		('CIVILIZATION_CVS_MALAYSIA',	'LOC_CITIZEN_CVS_MALAYSIA_FEMALE_9',	1 		),
		('CIVILIZATION_CVS_MALAYSIA',	'LOC_CITIZEN_CVS_MALAYSIA_FEMALE_10',	1 		);

-----------------------------------------------
-- CivilizationInfo
-----------------------------------------------

INSERT INTO	CivilizationInfo
		(CivilizationType,				Header,						Caption,									SortIndex	)
VALUES	('CIVILIZATION_CVS_MALAYSIA',	'LOC_CIVINFO_LOCATION',		'LOC_CIVINFO_CVS_MALAYSIA_LOCATION',		10			),
		('CIVILIZATION_CVS_MALAYSIA',	'LOC_CIVINFO_SIZE',			'LOC_CIVINFO_CVS_MALAYSIA_SIZE',			20			),
		('CIVILIZATION_CVS_MALAYSIA',	'LOC_CIVINFO_POPULATION',	'LOC_CIVINFO_CVS_MALAYSIA_POPULATION',		30			),
		('CIVILIZATION_CVS_MALAYSIA',	'LOC_CIVINFO_CAPITAL',		'LOC_CIVINFO_CVS_MALAYSIA_CAPITAL',			40			);
		
-----------------------------------------------
-- Start Bias
-----------------------------------------------

INSERT INTO	StartBiasTerrains
		(CivilizationType,				TerrainType,				Tier	)
VALUES	('CIVILIZATION_CVS_MALAYSIA',	'TERRAIN_COAST',			1		),
		('CIVILIZATION_CVS_MALAYSIA',	'TERRAIN_GRASS_MOUNTAIN',	5		);

INSERT INTO	StartBiasFeatures
		(CivilizationType,				FeatureType,		Tier	)
VALUES	('CIVILIZATION_CVS_MALAYSIA',	'FEATURE_JUNGLE',	3		);

INSERT INTO	StartBiasResources
		(CivilizationType,				ResourceType,		Tier	)
VALUES	('CIVILIZATION_CVS_MALAYSIA',	'RESOURCE_FISH',	5		),
		('CIVILIZATION_CVS_MALAYSIA',	'RESOURCE_CRABS',	5		);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
        (RequirementSetId,							RequirementSetType			)
VALUES	('REQSET_CVS_MALAYSIA_PLAYER_IS_MALAYSIAN',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_MALAYSIA_IS_MALAYSIAN',		'REQUIREMENTSET_TEST_ANY'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,							RequirementId							)
VALUES	('REQSET_CVS_MALAYSIA_PLAYER_IS_MALAYSIAN',	'REQ_CVS_MALAYSIA_PLAYER_IS_MALAYSIAN'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,								RequirementType						)
VALUES	('REQ_CVS_MALAYSIA_PLAYER_IS_MALAYSIAN',	'REQUIREMENT_REQUIREMENTSET_IS_MET'	);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,								Name,				Value								)
VALUES	('REQ_CVS_MALAYSIA_PLAYER_IS_MALAYSIAN',	'RequirementSetId', 'REQSET_CVS_MALAYSIA_IS_MALAYSIAN'	);

-----------------------------------------------
-- Support for Alternative Leaders
-----------------------------------------------
/*
INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId						)
VALUES	('REQSET_CVS_MALAYSIA_IS_MALAYSIAN',	'REQ_CVS_MALAYSIA_UI_IS_LEADERNAME'	);

INSERT INTO Requirements
		(RequirementId,						RequirementType								)
VALUES	('REQ_CVS_MALAYSIA_UI_LEADERNAME',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES'	);

INSERT INTO RequirementArguments
		(RequirementId,						Name,			Value				)
VALUES	('REQ_CVS_MALAYSIA_UI_LEADERNAME',	'LeaderType',	'LEADER_LEADERNAME'	);
*/