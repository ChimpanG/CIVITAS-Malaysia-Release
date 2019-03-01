/*
	UA
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types
		(Type,												Kind			)
VALUES	('TRAIT_CIVILIZATION_CVS_MALAYSIA_UA',				'KIND_TRAIT'	),
		('MODTYPE_CVS_MALAYSIA_UA_TRADE_TO_OTHERS',			'KIND_MODIFIER'	),
		('MODTYPE_CVS_MALAYSIA_UA_OUTGOING_INTERNATIONAL',	'KIND_MODIFIER'	);

-----------------------------------------------
-- Traits
-----------------------------------------------

INSERT INTO	Traits	
		(TraitType,								Name,											Description												)
VALUES	('TRAIT_CIVILIZATION_CVS_MALAYSIA_UA',	'LOC_TRAIT_CIVILIZATION_CVS_MALAYSIA_UA_NAME',	'LOC_TRAIT_CIVILIZATION_CVS_MALAYSIA_UA_DESCRIPTION'	);
		
-----------------------------------------------
-- CivilizationTraits
-----------------------------------------------

INSERT INTO	CivilizationTraits
		(CivilizationType,				TraitType								)
VALUES	('CIVILIZATION_CVS_MALAYSIA',	'TRAIT_CIVILIZATION_CVS_MALAYSIA_UA'	);

-----------------------------------------------
-- ImprovementModifiers
-----------------------------------------------

INSERT INTO	ImprovementModifiers	
		(ImprovementType,				ModifierId											)
VALUES	('IMPROVEMENT_FISHING_BOATS',	'MODIFIER_CVS_MALAYSIA_UA_OFFER_CULTURE'			),
		('IMPROVEMENT_FISHING_BOATS',	'MODIFIER_CVS_MALAYSIA_UA_OUTGOING_INTERNATIONAL'	);
		
-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers
		(ModifierType,										CollectionType,		EffectType													)
VALUES	('MODTYPE_CVS_MALAYSIA_UA_TRADE_TO_OTHERS',			'COLLECTION_OWNER',	'EFFECT_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS'					),
		('MODTYPE_CVS_MALAYSIA_UA_OUTGOING_INTERNATIONAL',	'COLLECTION_OWNER',	'EFFECT_ADJUST_CITY_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL'	);

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO Modifiers
		(ModifierId,											ModifierType,										SubjectRequirementSetId,					RunOnce,	Permanent	)
VALUES	('MODIFIER_CVS_MALAYSIA_UA_OFFER_CULTURE',				'MODTYPE_CVS_MALAYSIA_UA_TRADE_TO_OTHERS',			'REQSET_CVS_MALAYSIA_PLAYER_IS_MALAYSIAN',	0,			0			),
		('MODIFIER_CVS_MALAYSIA_UA_OUTGOING_INTERNATIONAL',		'MODTYPE_CVS_MALAYSIA_UA_OUTGOING_INTERNATIONAL',	'REQSET_CVS_MALAYSIA_PLAYER_IS_MALAYSIAN',	0,			0			);

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value			)
VALUES	('MODIFIER_CVS_MALAYSIA_UA_OFFER_CULTURE',				'YieldType',	'YIELD_CULTURE'	),
		('MODIFIER_CVS_MALAYSIA_UA_OFFER_CULTURE',				'Amount',		1				),
		('MODIFIER_CVS_MALAYSIA_UA_OFFER_CULTURE',				'Domestic',		1				),
		('MODIFIER_CVS_MALAYSIA_UA_OUTGOING_INTERNATIONAL',		'YieldType',	'YIELD_GOLD'	),
		('MODIFIER_CVS_MALAYSIA_UA_OUTGOING_INTERNATIONAL',		'Amount',		2				);