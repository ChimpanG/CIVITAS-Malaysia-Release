/*
	Strategy
	Credits: ChimpanG
*/

-----------------------------------------------
-- AiListTypes
-----------------------------------------------

INSERT INTO AiListTypes
		(ListType								)
VALUES 	('LEADER_CVS_ISKANDAR_ALLIANCES'		),
		('LEADER_CVS_ISKANDAR_COMMEMORATIONS'	);

-----------------------------------------------
-- AiLists
-----------------------------------------------

INSERT INTO AiLists
		(ListType,								LeaderType,						System				)
VALUES  ('LEADER_CVS_ISKANDAR_ALLIANCES',		'TRAIT_LEADER_CVS_ISKANDAR',	'Alliances'			),
		('LEADER_CVS_ISKANDAR_COMMEMORATIONS',	'TRAIT_LEADER_CVS_ISKANDAR',	'Commemorations'	);
		
-----------------------------------------------
-- AiFavoredItems
-----------------------------------------------

INSERT INTO AiFavoredItems
		(ListType,								Item,										Favored	)
VALUES  -- ALLIANCES
		('LEADER_CVS_ISKANDAR_ALLIANCES',		'ALLIANCE_ECONOMIC',						1		),
		-- COMMEMORATIONS
		('LEADER_CVS_ISKANDAR_COMMEMORATIONS',	'COMMEMORATION_EXPLORATION',				1		),
		('LEADER_CVS_ISKANDAR_COMMEMORATIONS',	'COMMEMORATION_ECONOMIC',					1		),
		-- DIPLOMACY
		('LEADER_CVS_ISKANDAR_DIPLOMACY',		'DIPLOACTION_ALLIANCE_ECONOMIC',			1		);
