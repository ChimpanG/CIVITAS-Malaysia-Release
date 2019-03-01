/*
	Localisation
	Credits: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT OR REPLACE INTO BaseGameText
		(Tag,	Text)
VALUES

-----------------------------------------------
-- Leader
-----------------------------------------------	
	
	("LOC_LEADER_CVS_TUN_PERAK_NAME",  "Tun Perak"	),
	
-----------------------------------------------
-- UA
-----------------------------------------------	

	("LOC_TRAIT_LEADER_CVS_TUN_PERAK_UA_NAME",  "Kingmaker"	),
	("LOC_TRAIT_LEADER_CVS_TUN_PERAK_UA_DESCRIPTION",
	"Gain an additional Economic policy slot in any [ICON_Government] Government, and Cities on a foreign continent start with a free [ICON_TradingPost] Trading Post. Gains access to the Meriam unique unit."	),

-----------------------------------------------
-- UU
-----------------------------------------------	

	("LOC_UNIT_CVS_TUN_PERAK_UU_NAME",  "Meriam"	),
	("LOC_UNIT_CVS_TUN_PERAK_UU_DESCRIPTION",
	"A siege unit unique to Malaysia that deals [ICON_Bombard] Bombard damage, ideal for attacking cities. Costs more than the Bombard it replaces, but deals additional damage to Naval units and receives additional [ICON_Strength] Combat Strength when defending against [ICON_Ranged] Ranged attacks."	),

	("LOC_MODIFIER_CVS_TUN_PERAK_UU_NAVAL_STRENGTH_DESCRIPTION",  	"+{1_Amount} Combat Strength vs Naval"	),
	("LOC_MODIFIER_CVS_TUN_PERAK_UU_RANGE_DEFENSE_DESCRIPTION",  	"+{1_Amount} Defensive Strength against ranged attacks"	),

-----------------------------------------------
-- Agenda
-----------------------------------------------	

	("LOC_AGENDA_CVS_TUN_PERAK_NAME",	"Bendahara"	),
	("LOC_AGENDA_CVS_TUN_PERAK_DESCRIPTION",	"Will never declare war on Civilizations with the same Government as him, unless they attack a City-State under his protection. Likes those with a strong economy."	),
	("LOC_DIPLO_KUDO_LEADER_CVS_TUN_PERAK_REASON_ANY",	"(You have a strong economy.)"	),
	("LOC_DIPLO_MODIFIER_CVS_TUN_PERAK_HAPPY",	"Tun Perak is happy that you have a strong economy"	),
	("LOC_DIPLO_WARNING_LEADER_CVS_TUN_PERAK_REASON_ANY",	"(You attacked a City-State under his protection.)"	),
	("LOC_DIPLO_MODIFIER_CVS_TUN_PERAK_UNHAPPY",	"Tun Perak is enraged that you attacked a City-State under his protection"	),
		
-----------------------------------------------
-- DOM
-----------------------------------------------	

	("LOC_LOADING_INFO_LEADER_CVS_TUN_PERAK",
	"Rise, Tun Perak, legendary Bendahara of Malacca. Your magnificence in governance may bring forth economic stability for your people, but it is distant lands that hold greater opportunities for trade. Serve your kingdom through diplomacy and shrewd expansion knowing that the magnificence of your cannons will deter even the most stubborn of foes, and you shall bring forth the golden age of maritime prosperity for Malaysia."  	),

-----------------------------------------------
-- Diplos | First Meet
-----------------------------------------------	

	-- First AI Line (ANY)
	("LOC_DIPLO_FIRST_MEET_LEADER_CVS_TUN_PERAK_ANY",
	"Stand easy, stranger. You are in the presence of I, Tun Perak, great Bendahara of Malacca. Treat me as your equal and you will have my respect." ),
	
	-- AI invitation to visit nearby City (ANY)
	("LOC_DIPLO_FIRST_MEET_VISIT_RECIPIENT_LEADER_CVS_TUN_PERAK_ANY",
	"I would like to invite your merchants to visit my city nearby. I can assure you, they will be made to feel most welcome."	),
	
	-- AI accepts human invitation (ANY)
	("LOC_DIPLO_FIRST_MEET_NEAR_INITIATOR_POSITIVE_LEADER_CVS_TUN_PERAK_ANY",
	"I would be honored."	),
	
	-- AI invitation to exchange Capital Information (ANY)
	("LOC_DIPLO_FIRST_MEET_NO_MANS_INFO_EXCHANGE_LEADER_CVS_TUN_PERAK_ANY",
	"I must get going, but I invite you to visit our nearby city. I am certain you will find many opportunities for trade there."	),

-----------------------------------------------
-- Diplos | Greetings
-----------------------------------------------	

	-- (HAPPY)
	("LOC_DIPLO_GREETING_LEADER_CVS_TUN_PERAK_HAPPY",
	"Yes?"	),

	-- (UNHAPPY)
	("LOC_DIPLO_GREETING_LEADER_CVS_TUN_PERAK_UNHAPPY",
	"You again..."	),
	
-----------------------------------------------
-- Diplos | Delegation
-----------------------------------------------	

	-- AI Accepts (ANY)
	("LOC_DIPLO_ACCEPT_DELEGATION_FROM_HUMAN_LEADER_CVS_TUN_PERAK_ANY",
	"I gladly accept. Your delegates are welcome to stay and enjoy their time in Malacca."	),
	
	-- AI Rejects (ANY)
	("LOC_DIPLO_REJECT_DELEGATION_FROM_HUMAN_LEADER_CVS_TUN_PERAK_ANY",
	"I'm sorry, but I cannot allow that at this time."	),
	
	-- AI Requests (ANY)
	("LOC_DIPLO_DELEGATION_FROM_AI_LEADER_CVS_TUN_PERAK_ANY",
	"My delegates are en route to your Capital. With them they carry an assortment of rare metals with which your artisans may craft into weapons and jewellry. Feel free to send your merchants to Malacca if you'd like more."	),
	
-----------------------------------------------
-- Diplos | Open Borders
-----------------------------------------------	

	-- AI accepts from human (ANY)	
	("LOC_DIPLO_ACCEPT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_TUN_PERAK_ANY",
	"Of course, your merchants will be welcomed with open arms."	),
	
	-- AI rejects from human (ANY)	
	("LOC_DIPLO_REJECT_OPEN_BORDERS_FROM_HUMAN_LEADER_CVS_TUN_PERAK_ANY",
	"No. Your merchants already have access to our ports. Why would you require anything else?"	),
	
	-- AI requests from human (ANY)	
	("LOC_DIPLO_OPEN_BORDERS_FROM_AI_LEADER_CVS_TUN_PERAK_ANY",
	"I have always envisioned a world with free trade and open borders. Will you do me the honor of opening yours to my people?"	),
	
-----------------------------------------------
-- Diplos | Declare Friendship
-----------------------------------------------	

	-- AI accepts from human (ANY)
	("LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_TUN_PERAK_ANY",
	"You honor me. I gladly accept."	),
	
	-- AI rejects from human (ANY)	
	("LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_HUMAN_LEADER_CVS_TUN_PERAK_ANY",
	"I do not indulge in politics without principle."	),
	
	-- AI Requests friendship from human (ANY)	
	("LOC_DIPLO_DECLARE_FRIEND_FROM_AI_LEADER_CVS_TUN_PERAK_ANY",
	"Let our nations become a symbol of friendship, peace and prosperity. What do you say?"	),
	
	-- Human accepts AI requests, AI responds (ANY)	
	("LOC_DIPLO_ACCEPT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_TUN_PERAK_ANY",
	"The fruits of free trade are always sweeter when shared with a friend. I humbly accept."	),
	
	-- Human rejects AI requests, AI responds (ANY)	
	("LOC_DIPLO_REJECT_DECLARE_FRIEND_FROM_AI_LEADER_CVS_TUN_PERAK_ANY",
	"Perhaps next time."	),

-----------------------------------------------
-- Diplos | Alliance
-----------------------------------------------	

	-- AI Requests an alliance from human (ANY)
	("LOC_DIPLO_MAKE_ALLIANCE_FROM_AI_LEADER_CVS_TUN_PERAK_ANY",
	"Together we are strong enough to banish any chaos that may befall our kingdoms. What do you say to an alliance?"	),

-----------------------------------------------
-- Diplos | Kudos & Warnings
-----------------------------------------------	
	
	-- AI Kudos (ANY)
	("LOC_DIPLO_KUDO_EXIT_LEADER_CVS_TUN_PERAK_ANY",
	"There is no better friend to any merchant than a fair competitor. You have my respect for that."	),
	
	-- AI Warnings (ANY)
	("LOC_DIPLO_WARNING_EXIT_LEADER_CVS_TUN_PERAK_ANY",
	"It is not the unyielding gaze of pirates I fear, but instead the honest merchant that blinks."	),

-----------------------------------------------
-- Diplos | Troops Near Border
-----------------------------------------------	
	
	-- AI warns player for border troops (HAPPY)
	("LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_TUN_PERAK_HAPPY",
	"I would like you to remove your troops from borders. Do not mistake this as a request."	),

	-- AI warns player for border troops (UNHAPPY)
	("LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_LEADER_CVS_TUN_PERAK_UNHAPPY",
	"If your troops along my borders are supposed to intimidate me, you're very much mistaken."	),
	
	-- AI accepts player's warning for border troops warning (HAPPY)
	("LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_TUN_PERAK_HAPPY",
	"I will remove them at once. Apologies for the confusion."	),
	
	-- AI accepts player's warning for border troops warning (UNHAPPY)
	("LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_TUN_PERAK_UNHAPPY",
	"They will move of their own accord, not yours."	),
	
	-- AI rejects player's warning for border troops warning (ANY) ~ DECLARES WAR
	("LOC_DIPLO_WARNING_TOO_MANY_TROOPS_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_TUN_PERAK_ANY",
	"It is but a shame that it has come to this, but you are a danger to my people and must be removed from power."	),

-----------------------------------------------
-- Diplos | Settling Too Close
-----------------------------------------------	
	
	-- AI warns player for settling too close (HAPPY)
	("LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_CVS_TUN_PERAK_HAPPY",
	"As a friend, I'd ask you to keep your distance from my cities. This is Malaccan territory."	),
	
	-- AI warns player for settling too close (UNHAPPY)
	("LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_LEADER_CVS_TUN_PERAK_UNHAPPY",
	"It would serve you well not to encroach upon my territory any further."	),
	
	-- Positive AI response to human request (HAPPY)
	("LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_TUN_PERAK_HAPPY",
	"My sincere apologies, friend. I shall send my settlers elsewhere next time."	),
	
	-- Positive AI response to human request (UNHAPPY)
	("LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_POSITIVE_LEADER_CVS_TUN_PERAK_UNHAPPY",
	"I suppose I can look elsewhere next time. I wouldn't want your backward traditions influencing my people anyway."	),
	
	-- Negative AI response to human request (HAPPY)
	("LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_TUN_PERAK_HAPPY",
	"Listen friend, if you wanted that land then you should have settled it yourself."	),
	
	-- Negative AI response to human request (UNHAPPY)
	("LOC_DIPLO_WARNING_DONT_SETTLE_NEAR_ME_AI_RESPONSE_NEGATIVE_LEADER_CVS_TUN_PERAK_UNHAPPY",
	"Make me."	),
	
-----------------------------------------------
-- Diplos | Trade
-----------------------------------------------	

	-- AI Accepts Deal (HAPPY)
	("LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_TUN_PERAK_HAPPY",
	"When we are all prosperous, trade with each other becomes more valuable to us both. I accept your offer."	),
	
	-- AI Accepts Deal (Unhappy)
	("LOC_DIPLO_ACCEPT_MAKE_DEAL_FROM_AI_LEADER_CVS_TUN_PERAK_UNHAPPY",
	"I'm not quite convinced this deal is in my best interests, but I hope you remember this next time."	),

	-- AI Rejects Deal (HAPPY)
	("LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_TUN_PERAK_HAPPY",
	"Now, now. You can do better than that."	),
	
	-- AI Rejects Deal (Unhappy)
	("LOC_DIPLO_REJECT_MAKE_DEAL_FROM_AI_LEADER_CVS_TUN_PERAK_UNHAPPY",
	"I know a bad deal when I see one. The answer is no."	),

-----------------------------------------------
-- Diplos | Denounce
-----------------------------------------------	

	-- From Human
	("LOC_DIPLO_DENOUNCE_FROM_HUMAN_LEADER_CVS_TUN_PERAK_ANY",
	"My patience with you is wearing thin."	),
	
	-- From AI
	("LOC_DIPLO_DENOUNCE_FROM_AI_LEADER_CVS_TUN_PERAK_ANY",
	"I will personally see that you pay for attacking City-States under our protection. (Denounces You)"	),
	
-----------------------------------------------
-- Diplos | Declarations of War
-----------------------------------------------	

	-- Human Declares War
	("LOC_DIPLO_DECLARE_WAR_FROM_HUMAN_LEADER_CVS_TUN_PERAK_ANY",
	"Let your armies come. I shall meet them at the gates."	),
	
	-- AI Declares War
	("LOC_DIPLO_DECLARE_WAR_FROM_AI_LEADER_CVS_TUN_PERAK_ANY",
	"For too long these lands have suffered your rule. Your kingdom will be brought to order."	), 

-----------------------------------------------
-- Diplos | Make Peace
-----------------------------------------------	
	
	-- AI accepts from human
	("LOC_DIPLO_MAKE_PEACE_AI_ACCEPT_DEAL_LEADER_CVS_TUN_PERAK_ANY",
	"We have both proven our worth, and lost much in doing so. It is time for us to end the bloodshed."	),
	
	-- AI refuses human
	("LOC_DIPLO_MAKE_PEACE_AI_REFUSE_DEAL_LEADER_CVS_TUN_PERAK_ANY",
	"This war is far from over."	),
	
	-- AI requests from human
	("LOC_DIPLO_MAKE_PEACE_FROM_AI_LEADER_CVS_TUN_PERAK_ANY",
	"This war has borned a chaos that will tear us both asunder should we not allow it to cease. Let us lay down arms."	),

-----------------------------------------------
-- Diplos | Defeat
-----------------------------------------------	
	
	-- AI is Defeated
	("LOC_DIPLO_DEFEAT_FROM_AI_LEADER_CVS_TUN_PERAK_ANY",
	"Malacca is lost. I know when I'm defeated, but at least I shall be remembered. Can you say the same?"	),

	-- Human is Defeated (will see this in hotseat)
	("LOC_DIPLO_DEFEAT_FROM_HUMAN_LEADER_CVS_TUN_PERAK_ANY",
	"Malacca is lost. I know when I'm defeated, but at least I shall be remembered. Can you say the same?"	),

--------------------------------------------------------------------
-- Quote and Pedia
--------------------------------------------------------------------

	("LOC_PEDIA_LEADERS_PAGE_CVS_TUN_PERAK_QUOTE",
	"One can trade goods for coin, but only an ideology can bring riches beyond imagination."  ),
	
	("LOC_PEDIA_LEADERS_PAGE_CVS_TUN_PERAK_TITLE",
	"Tun Perak"),
	
	("LOC_PEDIA_LEADERS_PAGE_CVS_TUN_PERAK_SUBTITLE",
	"Bendahara"	),
	
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_TUN_PERAK_CHAPTER_CAPSULE_BODY",
	"Tun Perak is no stranger to the virtues of capitalism."),
	
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_TUN_PERAK_CHAPTER_DETAILED_BODY",
	"If anybody knows the value of a strong economy, it's Tun Perak. An additional economic slot in any government offers him enough versatility to support several victory types, but it is perhaps his expansionist nature that will lead him into conflict with other civilizations. With cities on foreign continents starting with trade posts, Tun Perak is unlikely to make many friends in his quest for intercontinental expansion, but his unique unit, the Meriam Lela, will see him safely through any conflict that may arise."	),

	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_TUN_PERAK_CHAPTER_HISTORY_PARA_1",
	"Bendara Seri Paduka Raja Tun Perak, or better known as Tun Perak, was the fifth and most famous bendahara, a Malay rank similar to a prime minister, during the Sultanate of Malacca. Early in his life, Perak was a soldier-statesman for Malaccan rulers. In 1445, he led the Malaccan army to victory by defeating Siamese invaders on two separate occasions, and as a result, he was made bendahara."),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_TUN_PERAK_CHAPTER_HISTORY_PARA_2",
	"Serving as advisor to under the rule of four different Sultans due to his efficiency and wisdom, Tun Perak was the effective ruler in not only his protection of Alam Melayu, but was instrumental in colonising over a dozen states in the Strait of Malacca. A man of strong leadership qualities, Tun Perak's expansion helped elevate Malacca, strengthening its position politically, socially and economically where he established diplomatic relations with giant goverments like China, the Ottoman Empire, Saudi Arabia and Rome among others. The diplomatic relations practiced by Tun Perak's governance soon attracted yet more traders around the world to establish relations with Malacca."),
	("LOC_PEDIA_LEADERS_PAGE_LEADER_CVS_TUN_PERAK_CHAPTER_HISTORY_PARA_3",
	"Perak, who had become a renouned kingmaker during his lifespan, died in 1498 and was replaced by his younger brother Tun Perpatih Putih. Tun Perak's death is widely regarded to be the start of the Malaccan Sultanate's decline."),

	("LOC_PEDIA_UNITS_PAGE_UNIT_CVS_TUN_PERAK_UU_CHAPTER_HISTORY_PARA_1",
	"Roughly a century after firearms were invented, Malays began making cannons, or 'Meriam Lela' in Malay. Evidence of these activities were documented by W Linehan when on the banks of the Tembeling river he found molds that were used to cast cannons in the 13th or 14th century. According to the conqueror of Malacca, Alfonso d'Albuquerque, Malaccan gun foundries were on par with those in Germany. When the Portuguese defeated Malacca, they found thousands of cannons including an extraordinarily large bombard, which Alfonso sent to his Hindu ally, the Zamorin of Calicut."),
	("LOC_PEDIA_UNITS_PAGE_UNIT_CVS_TUN_PERAK_UU_CHAPTER_HISTORY_PARA_2",
	"Guns produced by Malay kingdoms were of varied quality, and the most powerful ones were no doubt made by the wealthiest sultanates, and they had no problem blasting the best European ships out of the water. The Dutch East Indies Company discovered this the hard way when they lost a battleship during their attack on Makassar in 1667, and another one in the 18th century when they attacked a Bugis stronghold in Bintan. Guns made by Makassar were of such high quality they were actually demanded by the Dutch as part of war reparation payments, even though the war was started by the Dutch...");
	




	
	
	