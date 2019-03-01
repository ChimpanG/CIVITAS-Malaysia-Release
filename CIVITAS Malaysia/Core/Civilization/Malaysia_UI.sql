/*
	UI
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT INTO Types
		(Type,												Kind				)
VALUES	('TRAIT_CIVILIZATION_IMPROVEMENT_CVS_MALAYSIA_UI',	'KIND_TRAIT'		),
		('IMPROVEMENT_CVS_MALAYSIA_UI',						'KIND_IMPROVEMENT'	);

-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------
		
INSERT INTO CivilizationTraits
		(CivilizationType,				TraitType											)
VALUES	('CIVILIZATION_CVS_MALAYSIA',	'TRAIT_CIVILIZATION_IMPROVEMENT_CVS_MALAYSIA_UI'	);
		
-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO Traits
		(TraitType,											Name									)
VALUES	('TRAIT_CIVILIZATION_IMPROVEMENT_CVS_MALAYSIA_UI',	'LOC_IMPROVEMENT_CVS_MALAYSIA_UI_NAME'	);

-----------------------------------------------
-- Improvements
-----------------------------------------------

INSERT INTO Improvements	(
		ImprovementType,
		Name,		
		Description,
		TraitType,
		Icon,
		PrereqCivic,
		Buildable,
		PlunderType,
		PlunderAmount,
		Housing,
		TilesRequired,
		SameAdjacentValid,
		Domain
		)
VALUES	(
		'IMPROVEMENT_CVS_MALAYSIA_UI', -- ImprovementType
		'LOC_IMPROVEMENT_CVS_MALAYSIA_UI_NAME', -- Name		
		'LOC_IMPROVEMENT_CVS_MALAYSIA_UI_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_IMPROVEMENT_CVS_MALAYSIA_UI', -- TraitType
		'ICON_IMPROVEMENT_CVS_MALAYSIA_UI', -- Icon
		'CIVIC_STATE_WORKFORCE', -- PrereqCivic
		1, -- Buildable
		'PLUNDER_CULTURE', -- PlunderType
		25, -- PlunderAmount
		1, -- Housing
		1, -- TilesRequired
		1, -- SameAdjacentValid
		'DOMAIN_LAND' -- Domain
		);

-----------------------------------------------
-- Improvement_ValidBuildUnits
-----------------------------------------------
		
INSERT INTO Improvement_ValidBuildUnits
		(ImprovementType,				UnitType		)
VALUES	('IMPROVEMENT_CVS_MALAYSIA_UI',	'UNIT_BUILDER'	);

-----------------------------------------------
-- Improvement_ValidTerrains
-----------------------------------------------
		
INSERT INTO Improvement_ValidTerrains
		(ImprovementType,				TerrainType			)
VALUES	('IMPROVEMENT_CVS_MALAYSIA_UI',	'TERRAIN_GRASS'		),
		('IMPROVEMENT_CVS_MALAYSIA_UI',	'TERRAIN_PLAINS'	),
		('IMPROVEMENT_CVS_MALAYSIA_UI',	'TERRAIN_TUNDRA'	),
		('IMPROVEMENT_CVS_MALAYSIA_UI',	'TERRAIN_DESERT'	),
		('IMPROVEMENT_CVS_MALAYSIA_UI',	'TERRAIN_SNOW'		);

-----------------------------------------------
-- Improvement_ValidFeatures
-----------------------------------------------
		
INSERT INTO Improvement_ValidFeatures
		(ImprovementType,				FeatureType		)
VALUES	('IMPROVEMENT_CVS_MALAYSIA_UI',	'FEATURE_MARSH'	);

-----------------------------------------------
-- Improvement_YieldChanges
-----------------------------------------------
		
INSERT INTO Improvement_YieldChanges
		(ImprovementType,				YieldType,			YieldChange	)
VALUES	('IMPROVEMENT_CVS_MALAYSIA_UI',	'YIELD_CULTURE',	2			),
		('IMPROVEMENT_CVS_MALAYSIA_UI',	'YIELD_FOOD',		0			);

-----------------------------------------------
-- Improvement_Adjacencies
-----------------------------------------------
		
INSERT INTO Improvement_Adjacencies
		(ImprovementType,				YieldChangeId							)
VALUES	('IMPROVEMENT_CVS_MALAYSIA_UI',	'ADJ_CVS_MALAYSIA_UI_RIVER_FOOD'		),
		('IMPROVEMENT_CVS_MALAYSIA_UI',	'ADJ_CVS_MALAYSIA_UI_UNIQUE_CULTURE'	),
		('IMPROVEMENT_CVS_MALAYSIA_UI',	'ADJ_CVS_MALAYSIA_UI_CIVIC_CULTURE'		),
		('IMPROVEMENT_CVS_MALAYSIA_UI',	'ADJ_CVS_MALAYSIA_UI_PLANTATION_FOOD'	),
		('IMPROVEMENT_CVS_MALAYSIA_UI',	'ADJ_CVS_MALAYSIA_UI_CIVIC_FOOD'		);

-----------------------------------------------
-- Adjacency_YieldChanges
-----------------------------------------------
		
INSERT INTO Adjacency_YieldChanges
		(ID,										Description,	YieldType,			YieldChange,	TilesRequired,	AdjacentRiver,	AdjacentImprovement,			PrereqCivic,				ObsoleteCivic				)
VALUES	('ADJ_CVS_MALAYSIA_UI_RIVER_FOOD',			'Placeholder',	'YIELD_FOOD',		1,				1,				1,				NULL,							NULL,						NULL						),
		('ADJ_CVS_MALAYSIA_UI_UNIQUE_CULTURE',		'Placeholder',	'YIELD_CULTURE',	1,				2,				0,				'IMPROVEMENT_CVS_MALAYSIA_UI',	'CIVIC_EXPLORATION',		'CIVIC_CULTURAL_HERITAGE'	),
		('ADJ_CVS_MALAYSIA_UI_CIVIC_CULTURE',		'Placeholder',	'YIELD_CULTURE',	2,				2,				0,				'IMPROVEMENT_CVS_MALAYSIA_UI',	'CIVIC_CULTURAL_HERITAGE',	NULL						),
		('ADJ_CVS_MALAYSIA_UI_PLANTATION_FOOD',		'Placeholder',	'YIELD_FOOD',		1,				1,				0,				'IMPROVEMENT_PLANTATION',		'CIVIC_FEUDALISM',			'CIVIC_URBANIZATION'		),
		('ADJ_CVS_MALAYSIA_UI_CIVIC_FOOD',			'Placeholder',	'YIELD_FOOD',		2,				1,				0,				'IMPROVEMENT_PLANTATION',		'CIVIC_URBANIZATION',		NULL						);
