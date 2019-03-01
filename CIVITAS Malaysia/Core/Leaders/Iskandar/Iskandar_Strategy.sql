/*
	Strategy
	Credits: ChimpanG
*/

-----------------------------------------------
-- AiListTypes
-----------------------------------------------

INSERT INTO AiListTypes
		(ListType								)
VALUES 	('LEADER_CVS_ISKANDAR_TECHS'			),
		('LEADER_CVS_ISKANDAR_CIVICS'			),
		('LEADER_CVS_ISKANDAR_DISTRICTS'		),
		('LEADER_CVS_ISKANDAR_BUILDINGS'		),
		('LEADER_CVS_ISKANDAR_PROJECTS'			),
		('LEADER_CVS_ISKANDAR_DIPLOMACY'		),
		('LEADER_CVS_ISKANDAR_TACTICS'			),
		('LEADER_CVS_ISKANDAR_EXPANSION'		),
		('LEADER_CVS_ISKANDAR_PSUEDOS'			),
		('LEADER_CVS_ISKANDAR_YIELDS'			);

-----------------------------------------------
-- AiLists
-----------------------------------------------

INSERT INTO AiLists
		(ListType,								LeaderType,						System				)
VALUES  ('LEADER_CVS_ISKANDAR_TECHS',			'TRAIT_LEADER_CVS_ISKANDAR',	'Technologies'		),
		('LEADER_CVS_ISKANDAR_CIVICS',			'TRAIT_LEADER_CVS_ISKANDAR',	'Civics'			),
		('LEADER_CVS_ISKANDAR_DISTRICTS',		'TRAIT_LEADER_CVS_ISKANDAR',	'Districts'			),
		('LEADER_CVS_ISKANDAR_BUILDINGS',		'TRAIT_LEADER_CVS_ISKANDAR',	'Buildings'			),
		('LEADER_CVS_ISKANDAR_PROJECTS',		'TRAIT_LEADER_CVS_ISKANDAR',	'Projects'			),
		('LEADER_CVS_ISKANDAR_DIPLOMACY',		'TRAIT_LEADER_CVS_ISKANDAR',	'DiplomaticActions'	),
		('LEADER_CVS_ISKANDAR_TACTICS',			'TRAIT_LEADER_CVS_ISKANDAR',	'Tactics'			),
		('LEADER_CVS_ISKANDAR_EXPANSION',		'TRAIT_LEADER_CVS_ISKANDAR',	'PlotEvaluations'	),
		('LEADER_CVS_ISKANDAR_PSUEDOS',			'TRAIT_LEADER_CVS_ISKANDAR',	'PsuedoYields'		),
		('LEADER_CVS_ISKANDAR_YIELDS',			'TRAIT_LEADER_CVS_ISKANDAR',	'Yields'			);
		
-----------------------------------------------
-- AiFavoredItems
-----------------------------------------------

INSERT INTO AiFavoredItems
		(ListType,								Item,										Favored	)
VALUES  -- TECHS
		('LEADER_CVS_ISKANDAR_TECHS',			'TECH_CURRENCY',							1		),
		('LEADER_CVS_ISKANDAR_TECHS',			'TECH_MATHEMATICS',							1		),
		('LEADER_CVS_ISKANDAR_TECHS',			'TECH_BANKING',								1		),
		('LEADER_CVS_ISKANDAR_TECHS',			'TECH_ECONOMICS',							1		),
		('LEADER_CVS_ISKANDAR_TECHS',			'TECH_SAILING',								1		),
		('LEADER_CVS_ISKANDAR_TECHS',			'TECH_CELESTIAL_NAVIGATION',				1		),
		('LEADER_CVS_ISKANDAR_TECHS',			'TECH_SHIPBUILDING',						1		),
		('LEADER_CVS_ISKANDAR_TECHS',			'TECH_CARTOGRAPHY',							1		),
		('LEADER_CVS_ISKANDAR_TECHS',			'TECH_SQUARE_RIGGING',						1		),
		-- CIVICS
		('LEADER_CVS_ISKANDAR_CIVICS',			'CIVIC_CRAFTMANSHIP',						1		),
		('LEADER_CVS_ISKANDAR_CIVICS',			'CIVIC_EARLY_EMPIRE',						1		),
		('LEADER_CVS_ISKANDAR_CIVICS',			'CIVIC_FOREIGN_TRADE',						1		),
		('LEADER_CVS_ISKANDAR_CIVICS',			'CIVIC_FEUDALISM',							1		),
		('LEADER_CVS_ISKANDAR_CIVICS',			'CIVIC_NATIONALISM',						1		),
		('LEADER_CVS_ISKANDAR_CIVICS',			'CIVIC_DIVINE_RIGHT',						1		),
		('LEADER_CVS_ISKANDAR_CIVICS',			'CIVIC_NAVAL_TRADITION',					1		),
		('LEADER_CVS_ISKANDAR_CIVICS',			'CIVIC_EXPLORATION',						1		),
		('LEADER_CVS_ISKANDAR_CIVICS',			'CIVIC_MERCANTILISM',						1		),
		('LEADER_CVS_ISKANDAR_CIVICS',			'CIVIC_COLONIALISM',						1		),
		('LEADER_CVS_ISKANDAR_CIVICS',			'CIVIC_URBANIZATION',						1		),
		('LEADER_CVS_ISKANDAR_CIVICS',			'CIVIC_CULTURAL_HERITAGE',					1		),
		-- DISTRICTS
		('LEADER_CVS_ISKANDAR_DISTRICTS',		'DISTRICT_COMMERCIAL_HUB',					1		),
		('LEADER_CVS_ISKANDAR_DISTRICTS',		'DISTRICT_HARBOR',							1		),
		-- BUILDINGS
		('LEADER_CVS_ISKANDAR_BUILDINGS',		'BUILDING_MARKET',							1		),
		('LEADER_CVS_ISKANDAR_BUILDINGS',		'BUILDING_BANK',							1		),
		('LEADER_CVS_ISKANDAR_BUILDINGS',		'BUILDING_STOCK_EXCHANGE',					1		),
		('LEADER_CVS_ISKANDAR_BUILDINGS',		'BUILDING_LIGHTHOUSE',						1		),
		('LEADER_CVS_ISKANDAR_BUILDINGS',		'BUILDING_DRYDOCK',							1		),
		('LEADER_CVS_ISKANDAR_BUILDINGS',		'BUILDING_SEAPORT',							1		),
		-- WONDERS
		('LEADER_CVS_ISKANDAR_BUILDINGS',		'BUILDING_COLOSSUS',						1		),
		('LEADER_CVS_ISKANDAR_BUILDINGS',		'BUILDING_PETRA',							1		),
		('LEADER_CVS_ISKANDAR_BUILDINGS',		'BUILDING_GREAT_ZIMBABWE',					1		),
		('LEADER_CVS_ISKANDAR_BUILDINGS',		'BUILDING_BIG_BEN',							1		),
		('LEADER_CVS_ISKANDAR_BUILDINGS',		'BUILDING_GREAT_LIGHTHOUSE',				1		),
		('LEADER_CVS_ISKANDAR_BUILDINGS',		'BUILDING_VENETIAN_ARSENAL',				1		),
		('LEADER_CVS_ISKANDAR_BUILDINGS',		'BUILDING_STATUE_LIBERTY',					1		),
		('LEADER_CVS_ISKANDAR_BUILDINGS',		'BUILDING_HALICARNASSUS_MAUSOLEUM',			1		);
		
INSERT INTO AiFavoredItems
		(ListType,							Item,								Favored,	Value,	StringVal					)
VALUES  -- EXPANSION
		('LEADER_CVS_ISKANDAR_EXPANSION',	'Specific Resource',				1,			7,		'RESOURCE_WHALES'			),
		('LEADER_CVS_ISKANDAR_EXPANSION',	'Specific Resource',				1,			7,		'RESOURCE_PEARLS'			),
		('LEADER_CVS_ISKANDAR_EXPANSION',	'Specific Resource',				1,			7,		'RESOURCE_CRABS'			),
		('LEADER_CVS_ISKANDAR_EXPANSION',	'Specific Resource',				1,			7,		'RESOURCE_FISH'				),
		('LEADER_CVS_ISKANDAR_EXPANSION',	'Coastal',							1,			30,		NULL						),
		-- PSUEDOS
		('LEADER_CVS_ISKANDAR_PSUEDOS',		'PSEUDOYIELD_GPP_MERCHANT',			1,			30,		NULL						),
		('LEADER_CVS_ISKANDAR_PSUEDOS',		'PSEUDOYIELD_GPP_ADMIRAL',			1,			15,		NULL						),
		('LEADER_CVS_ISKANDAR_PSUEDOS',		'PSEUDOYIELD_IMPROVEMENT',			1,			5,		NULL						),
		('LEADER_CVS_ISKANDAR_PSUEDOS',		'PSEUDOYIELD_UNIT_NAVAL_COMBAT',	1,			20,		NULL						),
		('LEADER_CVS_ISKANDAR_PSUEDOS',		'PSEUDOYIELD_UNIT_TRADE',			1,			2.0,	NULL						);
