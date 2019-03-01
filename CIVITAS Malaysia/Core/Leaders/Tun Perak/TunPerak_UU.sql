/*
	UU
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------	
	
INSERT INTO Types
		(Type,											Kind			)
VALUES	('TRAIT_LEADER_CVS_TUN_PERAK_UU',				'KIND_TRAIT'	),
		('UNIT_CVS_TUN_PERAK_UU',						'KIND_UNIT'		),
		('ABILITY_CVS_TUN_PERAK_UU',					'KIND_ABILITY'	),
		('MODTYPE_CVS_TUN_PERAK_UU_ADJUST_STRENGTH',	'KIND_MODIFIER'	);

-----------------------------------------------
-- Tags
-----------------------------------------------	
	
INSERT INTO Tags
		(Tag,						Vocabulary		)
VALUES	('CLASS_CVS_TUN_PERAK_UU',	'ABILITY_CLASS'	);

-----------------------------------------------
-- TypeTags
-----------------------------------------------		

INSERT INTO TypeTags
		(Type,							Tag							)
VALUES	('UNIT_CVS_TUN_PERAK_UU',		'CLASS_CVS_TUN_PERAK_UU'	),
		('ABILITY_CVS_TUN_PERAK_UU',	'CLASS_CVS_TUN_PERAK_UU'	);

INSERT INTO TypeTags (Type,			Tag)
SELECT 	'UNIT_CVS_TUN_PERAK_UU',	Tag
FROM 	TypeTags
WHERE 	Type = 'UNIT_BOMBARD';

-----------------------------------------------
-- Traits
-----------------------------------------------
		
INSERT INTO Traits
		(TraitType,							Name								)
VALUES	('TRAIT_LEADER_CVS_TUN_PERAK_UU',	'LOC_UNIT_CVS_TUN_PERAK_UU_NAME'	);

-----------------------------------------------
-- LeaderTraits
-----------------------------------------------
		
INSERT INTO LeaderTraits
		(LeaderType,				TraitType						)
VALUES	('LEADER_CVS_TUN_PERAK',	'TRAIT_LEADER_CVS_TUN_PERAK_UU'	);

-----------------------------------------------
-- Units
-----------------------------------------------	
	
INSERT INTO Units	(
		UnitType,
		Name,
		Description,
		TraitType,
		BaseMoves,
		Cost,
		PurchaseYield,
		AdvisorType,
		Combat,
		Bombard,
		Range,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance,
		MandatoryObsoleteTech,
		PrereqTech,
		PrereqCivic
		)
SELECT	'UNIT_CVS_TUN_PERAK_UU', -- UnitType
		'LOC_UNIT_CVS_TUN_PERAK_UU_NAME', -- Name
		'LOC_UNIT_CVS_TUN_PERAK_UU_DESCRIPTION', -- Description
		'TRAIT_LEADER_CVS_TUN_PERAK_UU', -- TraitType
		BaseMoves,
		Cost + 20, -- Cost
		PurchaseYield,
		AdvisorType,
		Combat,
		Bombard,
		Range,
		BaseSightRange,
		ZoneOfControl,
		Domain,
		FormationClass,
		PromotionClass,
		Maintenance,
		MandatoryObsoleteTech,
		PrereqTech,
		PrereqCivic
FROM	Units
WHERE	UnitType = 'UNIT_BOMBARD';

-----------------------------------------------
-- UnitUpgrades
-----------------------------------------------
		
INSERT INTO UnitUpgrades (Unit,	UpgradeUnit)
SELECT 	'UNIT_CVS_TUN_PERAK_UU',	UpgradeUnit
FROM 	UnitUpgrades
WHERE	Unit = 'UNIT_BOMBARD';

-----------------------------------------------
-- UnitAiInfos
-----------------------------------------------
		
INSERT INTO UnitAiInfos (UnitType,	AiType)
SELECT 	'UNIT_CVS_TUN_PERAK_UU',	AiType
FROM 	UnitAiInfos
WHERE 	UnitType = 'UNIT_BOMBARD';
		
-----------------------------------------------
-- UnitReplaces
-----------------------------------------------
		
INSERT INTO UnitReplaces
		(CivUniqueUnitType,			ReplacesUnitType	)
VALUES	('UNIT_CVS_TUN_PERAK_UU',	'UNIT_BOMBARD'		);

-----------------------------------------------
-- UnitAbilities
-----------------------------------------------

INSERT INTO UnitAbilities
		(UnitAbilityType,				Name,									Description									)
VALUES	('ABILITY_CVS_TUN_PERAK_UU',	'LOC_ABILITY_CVS_TUN_PERAK_UU_NAME',	'LOC_ABILITY_CVS_TUN_PERAK_UU_DESCRIPTION'	);

-----------------------------------------------
-- UnitAbilityModifiers
-----------------------------------------------
		
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,				ModifierId									)
VALUES	('ABILITY_CVS_TUN_PERAK_UU',	'MODIFIER_CVS_TUN_PERAK_UU_NAVAL_STRENGTH'	),
		('ABILITY_CVS_TUN_PERAK_UU',	'MODIFIER_CVS_TUN_PERAK_UU_RANGE_DEFENSE'	);

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,									CollectionType,				EffectType									)
VALUES	('MODTYPE_CVS_TUN_PERAK_UU_ADJUST_STRENGTH',	'COLLECTION_UNIT_COMBAT',	'EFFECT_ADJUST_PLAYER_STRENGTH_MODIFIER'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers
		(ModifierId,									ModifierType,								SubjectRequirementSetId,				Permanent,	RunOnce	)
VALUES	('MODIFIER_CVS_TUN_PERAK_UU_NAVAL_STRENGTH',	'MODTYPE_CVS_TUN_PERAK_UU_ADJUST_STRENGTH',	'REQSET_CVS_TUN_PERAK_UU_VS_NAVAL',		0,			0		),
		('MODIFIER_CVS_TUN_PERAK_UU_RANGE_DEFENSE',		'MODTYPE_CVS_TUN_PERAK_UU_ADJUST_STRENGTH',	'REQSET_CVS_TUN_PERAK_UU_VS_RANGED',	0,			0		);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments		
		(ModifierId,									Name,		Value	)
VALUES	('MODIFIER_CVS_TUN_PERAK_UU_NAVAL_STRENGTH',	'Amount',	7		),
		('MODIFIER_CVS_TUN_PERAK_UU_RANGE_DEFENSE',		'Amount',	7		);

-----------------------------------------------
-- ModifierStrings
-----------------------------------------------

INSERT INTO ModifierStrings
        (ModifierId,									Context,	Text														)
VALUES  ('MODIFIER_CVS_TUN_PERAK_UU_NAVAL_STRENGTH',	'Preview',	'LOC_MODIFIER_CVS_TUN_PERAK_UU_NAVAL_STRENGTH_DESCRIPTION'	),
		('MODIFIER_CVS_TUN_PERAK_UU_RANGE_DEFENSE',		'Preview',	'LOC_MODIFIER_CVS_TUN_PERAK_UU_RANGE_DEFENSE_DESCRIPTION'	);

-----------------------------------------------
-- RequirementSets
-----------------------------------------------

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType			)
VALUES	('REQSET_CVS_TUN_PERAK_UU_VS_NAVAL',	'REQUIREMENTSET_TEST_ALL'	),
		('REQSET_CVS_TUN_PERAK_UU_VS_RANGED',	'REQUIREMENTSET_TEST_ALL'	);
		
-----------------------------------------------
-- RequirementSetRequirements
-----------------------------------------------

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId							)
VALUES	('REQSET_CVS_TUN_PERAK_UU_VS_NAVAL',	'REQ_CVS_TUN_PERAK_UU_VS_NAVAL'			),
		('REQSET_CVS_TUN_PERAK_UU_VS_RANGED',	'REQ_CVS_TUN_PERAK_UU_VS_RANGED'		),
		('REQSET_CVS_TUN_PERAK_UU_VS_RANGED',	'REQ_CVS_TUN_PERAK_UU_IS_DEFENDING'		);

-----------------------------------------------
-- Requirements
-----------------------------------------------

INSERT INTO Requirements
		(RequirementId,								RequirementType,							Inverse	)
VALUES	('REQ_CVS_TUN_PERAK_UU_VS_NAVAL',			'REQUIREMENT_OPPONENT_UNIT_DOMAIN_MATCHES',	0		),
		('REQ_CVS_TUN_PERAK_UU_VS_RANGED',			'REQUIREMENT_COMBAT_TYPE_MATCHES',			0		),
		('REQ_CVS_TUN_PERAK_UU_IS_DEFENDING',		'REQUIREMENT_PLAYER_IS_ATTACKING',			1		);

-----------------------------------------------
-- RequirementArguments
-----------------------------------------------

INSERT INTO RequirementArguments
		(RequirementId,						Name,			Value			)
VALUES	('REQ_CVS_TUN_PERAK_UU_VS_NAVAL',	'UnitDomain',	'DOMAIN_SEA'	),
		('REQ_CVS_TUN_PERAK_UU_VS_RANGED',	'CombatType',	'COMBAT_RANGED'	);