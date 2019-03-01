/*
	UA
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,										Kind				)
VALUES	('TRAIT_LEADER_CVS_TUN_PERAK_UA',			'KIND_TRAIT'		),
		('MODTYPE_CVS_TUN_PERAK_UA_ECONOMIC_SLOT',	'KIND_MODIFIER'		),
		('MODTYPE_CVS_TUN_PERAK_UA_TRADING_POST',	'KIND_MODIFIER'		);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,							Name,										Description										)
VALUES	('TRAIT_LEADER_CVS_TUN_PERAK_UA',	'LOC_TRAIT_LEADER_CVS_TUN_PERAK_UA_NAME',	'LOC_TRAIT_LEADER_CVS_TUN_PERAK_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- LeaderTraits
-----------------------------------------------

INSERT INTO	LeaderTraits
		(LeaderType,				TraitType						)
VALUES	('LEADER_CVS_TUN_PERAK',	'TRAIT_LEADER_CVS_TUN_PERAK_UA'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers
		(TraitType,							ModifierId									)
VALUES	('TRAIT_LEADER_CVS_TUN_PERAK_UA',	'MODIFIER_CVS_TUN_PERAK_UA_ECONOMIC_SLOT'	),
		('TRAIT_LEADER_CVS_TUN_PERAK_UA',	'MODIFIER_CVS_TUN_PERAK_UA_TRADING_POST'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,								CollectionType,				EffectType										)
VALUES	('MODTYPE_CVS_TUN_PERAK_UA_ECONOMIC_SLOT',	'COLLECTION_OWNER',			'EFFECT_ADJUST_PLAYER_GOVERNMENT_SLOT_TYPE'		),
		('MODTYPE_CVS_TUN_PERAK_UA_TRADING_POST',	'COLLECTION_PLAYER_CITIES',	'EFFECT_GRANT_CITY_TRADING_POST'				);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,								ModifierType,								SubjectRequirementSetId,					RunOnce,	Permanent	)
VALUES	('MODIFIER_CVS_TUN_PERAK_UA_ECONOMIC_SLOT',	'MODTYPE_CVS_TUN_PERAK_UA_ECONOMIC_SLOT',	NULL,										1,			1			),
		('MODIFIER_CVS_TUN_PERAK_UA_TRADING_POST',	'MODTYPE_CVS_TUN_PERAK_UA_TRADING_POST',	'REQSET_CVS_TUN_PERAK_FOREIGN_CONTINENT',	0,			0			);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,									Name,					Value			)
VALUES	('MODIFIER_CVS_TUN_PERAK_UA_ECONOMIC_SLOT',		'GovernmentSlotType',	'SLOT_ECONOMIC'	);

-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId							)
VALUES	('REQSET_CVS_TUN_PERAK_FOREIGN_CONTINENT',	'REQ_CVS_TUN_PERAK_FOREIGN_CONTINENT'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType			)
VALUES	('REQSET_CVS_TUN_PERAK_FOREIGN_CONTINENT',	'REQUIREMENTSET_TEST_ALL'	);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,								RequirementType,								Inverse	)
VALUES	('REQ_CVS_TUN_PERAK_FOREIGN_CONTINENT',		'REQUIREMENT_CITY_IS_OWNER_CAPITAL_CONTINENT',	1		);
