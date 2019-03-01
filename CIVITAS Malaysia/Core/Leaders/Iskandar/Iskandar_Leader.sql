/*
	Leader
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,					Kind			)
VALUES	('LEADER_CVS_ISKANDAR',	'KIND_LEADER'	);
		
-----------------------------------------------
-- CivilizationLeaders
-----------------------------------------------

INSERT INTO	CivilizationLeaders
		(CivilizationType,				LeaderType,				CapitalName				)
VALUES	('CIVILIZATION_CVS_MALAYSIA',	'LEADER_CVS_ISKANDAR',	'LOC_CITY_NAME_MALACCA'	);

-----------------------------------------------
-- Leaders
-----------------------------------------------

INSERT INTO	Leaders
		(LeaderType,			Name,							InheritFrom,		SceneLayers		)
VALUES	('LEADER_CVS_ISKANDAR',	'LOC_LEADER_CVS_ISKANDAR_NAME',	'LEADER_DEFAULT', 	4				);
		
-----------------------------------------------
-- LeaderQuotes
-----------------------------------------------

INSERT INTO	LeaderQuotes
		(LeaderType,			Quote										)
VALUES	('LEADER_CVS_ISKANDAR',	'LOC_PEDIA_LEADERS_PAGE_CVS_ISKANDAR_QUOTE'	);

-----------------------------------------------
-- LoadingInfo
-----------------------------------------------

INSERT INTO	LoadingInfo
		(LeaderType,			ForegroundImage,				BackgroundImage,					PlayDawnOfManAudio	)
VALUES	('LEADER_CVS_ISKANDAR',	'LEADER_CVS_ISKANDAR_NEUTRAL',	'LEADER_CVS_ISKANDAR_BACKGROUND',	0					);

-----------------------------------------------
-- FavoredReligions
-----------------------------------------------

INSERT INTO FavoredReligions
		(LeaderType,			ReligionType		)
VALUES	('LEADER_CVS_ISKANDAR',	'RELIGION_ISLAM'	);

-----------------------------------------------
-- Colors
-----------------------------------------------

INSERT INTO	PlayerColors
		(Type,					Usage,		PrimaryColor,		 			SecondaryColor,					TextColor					)
VALUES	('LEADER_CVS_ISKANDAR',	'Unique',	'COLOR_CVS_ISKANDAR_PRIMARY',	'COLOR_CVS_ISKANDAR_SECONDARY',	'COLOR_PLAYER_WHITE_TEXT'	);

INSERT INTO	Colors
		(Type,								Color				)
VALUES	('COLOR_CVS_ISKANDAR_PRIMARY',		'50,50,133,255'		),
		('COLOR_CVS_ISKANDAR_SECONDARY',	'154,154,238,255'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
        (RequirementSetId,						RequirementId							)
VALUES	('REQSET_CVS_MALAYSIA_IS_MALAYSIAN',	'REQ_CVS_MALAYSIA_LEADER_IS_ISKANDAR'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,								RequirementType								)
VALUES	('REQ_CVS_MALAYSIA_LEADER_IS_ISKANDAR',		'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES'	);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,							Name,			Value					)
VALUES	('REQ_CVS_MALAYSIA_LEADER_IS_ISKANDAR',	'LeaderType',	'LEADER_CVS_ISKANDAR'	);
