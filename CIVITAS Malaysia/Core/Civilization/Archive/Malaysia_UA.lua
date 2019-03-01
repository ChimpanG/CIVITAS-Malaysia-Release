-----------------------------------------------
-- ISKANDAR UA FUNCTION
-- Effect: Provides culture equal to City's food surplus upon population growth
-- Author: ChimpanG
-----------------------------------------------

include("Civ6Common.lua");
include("InstanceManager.lua");
include("SupportFunctions.lua");

-----------------------------------------------
-- FUNCTION C15_GetValidTraitPlayersNew
-- Credits: Chrisy15

-- function Credits (<3)
-- local LordAndSaviour = 'Chrisy15'
-- if modder:IsChimpanG() then
--    Mod.CallForHelp(LordAndSaviour)
--    print(LordAndSaviour .. " has performed a miracle")
-- end
-- Events.EverythingIsBroken.Add(Credits);
-----------------------------------------------

function C15_GetValidTraitPlayersNew(sTrait)
    local tValid = {}
    for k, v in ipairs(PlayerManager.GetWasEverAliveIDs()) do
        local leaderType = PlayerConfigurations[v]:GetLeaderTypeName()
        for trait in GameInfo.LeaderTraits() do
            if trait.LeaderType == leaderType and trait.TraitType == sTrait then 
                tValid[v] = true 
            end;
        end
        if not tValid[v] then
            local civType = PlayerConfigurations[v]:GetCivilizationTypeName()
            for trait in GameInfo.CivilizationTraits() do
                if trait.CivilizationType == civType and trait.TraitType == sTrait then 
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

	local sTrait = "TRAIT_CIVILIZATION_CVS_MALAYSIA_UA"
	local tTraitPlayers = C15_GetValidTraitPlayersNew(sTrait)

-----------------------------------------------
-- FUNCTION CPG_Malaysia_FoodSurplus
-- Credits: ChimpanG
-----------------------------------------------

function CPG_Malaysia_FoodSurplus(playerID, cityID, iPopulation)
	
	print("playerID is ", playerID)
	print("cityID is ", cityID)
	print("iPopulation is ", iPopulation)

	if iPopulation > 1 then
		local iPlayer = Players[playerID]
		local iPlayerCities = iPlayer:GetCities()
		local iCity = iPlayerCities:FindID(cityID)

		local iCityOwner = iCity:GetOwner() -- Get city owner
		print ("City's owner is ", iCityOwner)
		if tTraitPlayers[iCityOwner] then -- Check player trait
			print ("City owner has trait")

			local iFoodSurplus = iCity:GetGrowth():GetFoodSurplus()
			print("Food surplus is ", iFoodSurplus)
		
			iPlayer:GetCulture():ChangeCurrentCulturalProgress(iFoodSurplus)
			print("Culture changed")
		
			if iPlayer:IsHuman() then
				Game.AddWorldViewText(iPlayer, Locale.Lookup("[COLOR_FLOAT_CULTURE]+{1_Amount} [ICON_Culture] Culture from [ICON_FoodSurplus] Food Surplus[ENDCOLOR]", iFoodSurplus), iCity:GetX(), iCity:GetY(), 0)
			end
		end
	end
end		

Events.CityPopulationChanged.Add(CPG_Malaysia_FoodSurplus);