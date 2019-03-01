/*
	Mod Support YNAEMP
	Credits: SeelingCat, ChimpanG
*/

-----------------------------------------------
-- GEDEMON'S YNAEMP
-----------------------------------------------

CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);
INSERT INTO StartPosition
		(Civilization,					Leader,					MapName,			X,		Y	)
VALUES	-- ISKANDAR
		('CIVILIZATION_CVS_MALAYSIA',	'LEADER_CVS_ISKANDAR',	'GiantEarth',		75,		33	),
		('CIVILIZATION_CVS_MALAYSIA',	'LEADER_CVS_ISKANDAR',	'GreatestEarthMap',	83,		33	), 
		('CIVILIZATION_CVS_MALAYSIA',	'LEADER_CVS_ISKANDAR',	'CordiformEarth',	64,		19	),

		-- TUN PERAK
		('CIVILIZATION_CVS_MALAYSIA',	'LEADER_CVS_TUN_PERAK',	'GiantEarth',		75,		33	),
		('CIVILIZATION_CVS_MALAYSIA',	'LEADER_CVS_TUN_PERAK',	'GreatestEarthMap',	83,		33	), 
		('CIVILIZATION_CVS_MALAYSIA',	'LEADER_CVS_TUN_PERAK',	'CordiformEarth',	64,		19	);
