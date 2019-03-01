-----------------------------------------------
-- ISKANDAR UA FUNCTION
-- Effect: Envoys awarded for completing a city-state quest are doubled when another Civilization is its suzerain
-- Author: ChimpanG
-----------------------------------------------

include("Civ6Common.lua");
include("InstanceManager.lua");
include("SupportFunctions.lua");

-----------------------------------------------
-- FUNCTION C15_ValidTrait_Malaysia_UA
-- Credits: Chrisy15
-- Butchered by: Chimp

-- function Credits (<3)
-- local LordAndSaviour = 'Chrisy15'
-- if modder:IsChimpanG() then
--    Mod.CallForHelp(LordAndSaviour)
--    print(LordAndSaviour .. " has performed a miracle")
-- end
-- Events.EverythingIsBroken.Add(Credits);
-----------------------------------------------

function C15_ValidTrait_Malaysia_UA(sTrait_Malaysia_UA)
    local tValid = {}
    for k, v in ipairs(PlayerManager.GetWasEverAliveIDs()) do
        local leaderType = PlayerConfigurations[v]:GetLeaderTypeName()
        for trait in GameInfo.LeaderTraits() do
            if trait.LeaderType == leaderType and trait.TraitType == sTrait_Malaysia_UA then 
                tValid[v] = true 
            end;
        end
        if not tValid[v] then
            local civType = PlayerConfigurations[v]:GetCivilizationTypeName()
            for trait in GameInfo.CivilizationTraits() do
                if trait.CivilizationType == civType and trait.TraitType == sTrait_Malaysia_UA then 
                    tValid[v] = true 
                end;
            end
        end
    end
    return tValid
end

-----------------------------------------------
-- CONSTANTS
-----------------------------------------------

	local sTrait_Malaysia_UA = "TRAIT_CIVILIZATION_CVS_MALAYSIA_UA"
	local tTraitPlayers_Malaysia_UA = C15_ValidTrait_Malaysia_UA(sTrait_Malaysia_UA)

-----------------------------------------------
-- FUNCTION CPG_Malaysia_QuestEnvoy
-- Credits: ChimpanG
-----------------------------------------------

function CPG_Malaysia_QuestEnvoy(CityStatePlayerID, CompletedQuestPlayerID)
	
	--print("CityStatePlayerID is ", CityStatePlayerID)
	--print("CompletedQuestPlayerID is ", CompletedQuestPlayerID)

	if tTraitPlayers_Malaysia_UA[CompletedQuestPlayerID] then -- Check player trait
		--print("Player has trait")	

		local iPlayer = Players[CompletedQuestPlayerID]
		local iCityState = Players[CityStatePlayerID]

		local iSuzerain = iCityState:GetInfluence():GetSuzerain()
		--print("iSuzerain: ", iSuzerain)

		local iTokensReceived = iCityState:GetInfluence():GetTokensReceived()
		--print("iTokensReceived: ", iTokensReceived)

		local iMostTokensReceived = iCityState:GetInfluence():GetMostTokensReceived()
		--print("iMostTokensReceived: ", iMostTokensReceived)
		
		if iSuzerain ~= -1 and iSuzerain ~= iPlayer then -- check if another civ is suzerain
			--print("City-State has a suzerain that isn't the player")
			iPlayer:GetInfluence():GiveFreeTokenToPlayer(CityStatePlayerID) -- plant extra influence token in City-State
		else
			--print("City-State requirements not met. Bonus not applied.")
		end
	end

	--print ("CPG_Malaysia_QuestEnvoy Complete!")
end		

Events.QuestChanged.Add(CPG_Malaysia_QuestEnvoy);