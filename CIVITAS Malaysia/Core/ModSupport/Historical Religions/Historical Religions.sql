/*
	Mod Support Historical Religions
	Credits: Chrisy15
*/

-----------------------------------------------
-- TOMATEKH'S HISTORICAL RELIGIONS
-----------------------------------------------

CREATE TRIGGER IF NOT EXISTS CVS_ISKANDAR_RELIGION_TRIGGER
AFTER INSERT ON Religions
WHEN NEW.ReligionType = 'RELIGION_SUNNI'
BEGIN
	INSERT INTO FavoredReligions
			(LeaderType,				ReligionType		)
	VALUES	('LEADER_CVS_ISKANDAR',		NEW.ReligionType	),
			('LEADER_CVS_TUN_PERAK',	NEW.ReligionType	);
END;