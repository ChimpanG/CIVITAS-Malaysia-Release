/*
	Config
	Credits: ChimpanG
*/

-----------------------------------------------
-- Players
-----------------------------------------------

INSERT INTO Players (CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon)
SELECT	
		-- Civilization
		'CIVILIZATION_CVS_MALAYSIA', -- CivilizationType
		'LOC_CIVILIZATION_CVS_MALAYSIA_NAME', -- CivilizationName
		'ICON_CIVILIZATION_CVS_MALAYSIA_TUN_PERAK', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_CVS_MALAYSIA_UA_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_CVS_MALAYSIA_UA_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_CVS_MALAYSIA_TUN_PERAK', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_CVS_TUN_PERAK', -- LeaderType
		'LOC_LEADER_CVS_TUN_PERAK_NAME', -- LeaderName
		'ICON_LEADER_CVS_TUN_PERAK', -- LeaderIcon
		'LOC_TRAIT_LEADER_CVS_TUN_PERAK_UA_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_CVS_TUN_PERAK_UA_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_CVS_TUN_PERAK' -- LeaderAbilityIcon

WHERE EXISTS (SELECT * FROM CVS_UserSettings WHERE LeaderType = 'LEADER_CVS_TUN_PERAK' AND Enabled = 1);

-----------------------------------------------
-- PlayerItems
-----------------------------------------------

INSERT INTO PlayerItems
		(CivilizationType, 				LeaderType, 			Type, 						Icon, 							Name, 								Description, 								SortIndex	)
SELECT	'CIVILIZATION_CVS_MALAYSIA',	'LEADER_CVS_TUN_PERAK',	'UNIT_CVS_MALAYSIA_UU',		'ICON_UNIT_CVS_MALAYSIA_UU',	'LOC_UNIT_CVS_MALAYSIA_UU_NAME',	'LOC_UNIT_CVS_MALAYSIA_UU_DESCRIPTION',		10			
WHERE EXISTS (SELECT * FROM CVS_UserSettings WHERE LeaderType = 'LEADER_CVS_TUN_PERAK' AND Enabled = 1);

INSERT INTO PlayerItems
		(CivilizationType, 				LeaderType, 			Type, 							Icon, 								Name, 									Description, 									SortIndex	)
SELECT	'CIVILIZATION_CVS_MALAYSIA',	'LEADER_CVS_TUN_PERAK',	'IMPROVEMENT_CVS_MALAYSIA_UI',	'ICON_IMPROVEMENT_CVS_MALAYSIA_UI',	'LOC_IMPROVEMENT_CVS_MALAYSIA_UI_NAME', 'LOC_IMPROVEMENT_CVS_MALAYSIA_UI_DESCRIPTION',	20				
WHERE EXISTS (SELECT * FROM CVS_UserSettings WHERE LeaderType = 'LEADER_CVS_TUN_PERAK' AND Enabled = 1);

INSERT INTO PlayerItems
		(CivilizationType, 				LeaderType, 			Type, 						Icon, 							Name, 								Description, 								SortIndex	)
SELECT	'CIVILIZATION_CVS_MALAYSIA',	'LEADER_CVS_TUN_PERAK',	'UNIT_CVS_TUN_PERAK_UU',	'ICON_UNIT_CVS_TUN_PERAK_UU',	'LOC_UNIT_CVS_TUN_PERAK_UU_NAME',	'LOC_UNIT_CVS_TUN_PERAK_UU_DESCRIPTION',	30				
WHERE EXISTS (SELECT * FROM CVS_UserSettings WHERE LeaderType = 'LEADER_CVS_TUN_PERAK' AND Enabled = 1);

-----------------------------------------------
-- Players (Rise and Fall)
-----------------------------------------------

INSERT INTO Players (Domain, CivilizationType, CivilizationName, CivilizationIcon, CivilizationAbilityName, CivilizationAbilityDescription, CivilizationAbilityIcon, LeaderType, LeaderName, LeaderIcon, LeaderAbilityName, LeaderAbilityDescription, LeaderAbilityIcon)
SELECT	
		-- Civilization
		'Players:Expansion1_Players', -- Domain
		'CIVILIZATION_CVS_MALAYSIA', -- CivilizationType
		'LOC_CIVILIZATION_CVS_MALAYSIA_NAME', -- CivilizationName
		'ICON_CIVILIZATION_CVS_MALAYSIA_TUN_PERAK', -- CivilizationIcon
		'LOC_TRAIT_CIVILIZATION_CVS_MALAYSIA_UA_NAME', -- CivilizationAbilityName
		'LOC_TRAIT_CIVILIZATION_CVS_MALAYSIA_UA_DESCRIPTION', -- CivilizationAbilityDescription
		'ICON_CIVILIZATION_CVS_MALAYSIA_TUN_PERAK', -- CivilizationAbilityIcon
		
		-- Leader
		'LEADER_CVS_TUN_PERAK', -- LeaderType
		'LOC_LEADER_CVS_TUN_PERAK_NAME', -- LeaderName
		'ICON_LEADER_CVS_TUN_PERAK', -- LeaderIcon
		'LOC_TRAIT_LEADER_CVS_TUN_PERAK_UA_NAME', -- LeaderAbilityName
		'LOC_TRAIT_LEADER_CVS_TUN_PERAK_UA_DESCRIPTION', -- LeaderAbilityDescription
		'ICON_LEADER_CVS_TUN_PERAK' -- LeaderAbilityIcon

WHERE EXISTS (SELECT * FROM CVS_UserSettings WHERE LeaderType = 'LEADER_CVS_TUN_PERAK' AND Enabled = 1);

-----------------------------------------------
-- PlayerItems (Rise and Fall)
-----------------------------------------------

INSERT INTO PlayerItems
		(Domain, 						CivilizationType, 				LeaderType, 			Type, 						Icon, 							Name, 								Description, 								SortIndex	)
SELECT	'Players:Expansion1_Players',	'CIVILIZATION_CVS_MALAYSIA',	'LEADER_CVS_TUN_PERAK',	'UNIT_CVS_MALAYSIA_UU',		'ICON_UNIT_CVS_MALAYSIA_UU',	'LOC_UNIT_CVS_MALAYSIA_UU_NAME',	'LOC_UNIT_CVS_MALAYSIA_UU_DESCRIPTION',		10			
WHERE EXISTS (SELECT * FROM CVS_UserSettings WHERE LeaderType = 'LEADER_CVS_TUN_PERAK' AND Enabled = 1);

INSERT INTO PlayerItems
		(Domain, 						CivilizationType, 				LeaderType, 			Type, 							Icon, 								Name, 									Description, 									SortIndex	)
SELECT	'Players:Expansion1_Players',	'CIVILIZATION_CVS_MALAYSIA',	'LEADER_CVS_TUN_PERAK',	'IMPROVEMENT_CVS_MALAYSIA_UI',	'ICON_IMPROVEMENT_CVS_MALAYSIA_UI',	'LOC_IMPROVEMENT_CVS_MALAYSIA_UI_NAME', 'LOC_IMPROVEMENT_CVS_MALAYSIA_UI_DESCRIPTION',	20				
WHERE EXISTS (SELECT * FROM CVS_UserSettings WHERE LeaderType = 'LEADER_CVS_TUN_PERAK' AND Enabled = 1);

INSERT INTO PlayerItems
		(Domain,						CivilizationType, 				LeaderType, 			Type, 						Icon, 							Name, 								Description, 								SortIndex	)
SELECT	'Players:Expansion1_Players',	'CIVILIZATION_CVS_MALAYSIA',	'LEADER_CVS_TUN_PERAK',	'UNIT_CVS_TUN_PERAK_UU',	'ICON_UNIT_CVS_TUN_PERAK_UU',	'LOC_UNIT_CVS_TUN_PERAK_UU_NAME',	'LOC_UNIT_CVS_TUN_PERAK_UU_DESCRIPTION',	30				
WHERE EXISTS (SELECT * FROM CVS_UserSettings WHERE LeaderType = 'LEADER_CVS_TUN_PERAK' AND Enabled = 1);
