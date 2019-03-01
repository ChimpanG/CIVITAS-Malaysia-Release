/*
	UA
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,									Kind			)
VALUES	('TRAIT_LEADER_CVS_ISKANDAR_UA',		'KIND_TRAIT'	),
		('MODTYPE_CVS_ISKANDAR_UA_GP_BORDERS',	'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits
		(TraitType,							Name,										Description										)
VALUES	('TRAIT_LEADER_CVS_ISKANDAR_UA',	'LOC_TRAIT_LEADER_CVS_ISKANDAR_UA_NAME',	'LOC_TRAIT_LEADER_CVS_ISKANDAR_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- LeaderTraits
-----------------------------------------------

INSERT INTO	LeaderTraits
		(LeaderType,			TraitType						)
VALUES	('LEADER_CVS_ISKANDAR',	'TRAIT_LEADER_CVS_ISKANDAR_UA'	);

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

INSERT INTO	TraitModifiers	
		(TraitType,							ModifierId								)
VALUES	('TRAIT_LEADER_CVS_ISKANDAR_UA',	'MODIFIER_CVS_ISKANDAR_UA_GP_BORDERS'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,							CollectionType,				EffectType									)
VALUES	('MODTYPE_CVS_ISKANDAR_UA_GP_BORDERS',	'COLLECTION_PLAYER_CITIES',	'EFFECT_ADD_EXPENDED_GREAT_PERSON_TILES'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,							ModifierType,							SubjectRequirementSetId,	RunOnce,	Permanent	)
VALUES	('MODIFIER_CVS_ISKANDAR_UA_GP_BORDERS',	'MODTYPE_CVS_ISKANDAR_UA_GP_BORDERS',	NULL,						0,			0			);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments
		(ModifierId,								Name,		Value	)
VALUES	('MODIFIER_CVS_ISKANDAR_UA_GP_BORDERS',		'Amount',	2		);