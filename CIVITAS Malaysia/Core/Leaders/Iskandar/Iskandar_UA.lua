-----------------------------------------------
-- ISKANDAR UA FUNCTIONS
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
--    --print(LordAndSaviour .. " has performed a miracle")
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

-- I'm sure there's a more logical way of implementing the following but eh

function CS_Scientific(sTrait_Scientific)
    local tValid = {}
    for k, v in ipairs(PlayerManager.GetWasEverAliveIDs()) do
        local leaderType = PlayerConfigurations[v]:GetLeaderTypeName()
        for trait in GameInfo.Leaders() do
            if trait.LeaderType == leaderType and trait.InheritFrom == sTrait_Scientific then 
                tValid[v] = true 
            end;
        end
	end
    return tValid
end

function CS_Religious(sTrait_Religious)
    local tValid = {}
    for k, v in ipairs(PlayerManager.GetWasEverAliveIDs()) do
        local leaderType = PlayerConfigurations[v]:GetLeaderTypeName()
        for trait in GameInfo.Leaders() do
            if trait.LeaderType == leaderType and trait.InheritFrom == sTrait_Religious then 
                tValid[v] = true 
            end;
        end
    end
    return tValid
end

function CS_Trade(sTrait_Trade)
    local tValid = {}
    for k, v in ipairs(PlayerManager.GetWasEverAliveIDs()) do
        local leaderType = PlayerConfigurations[v]:GetLeaderTypeName()
        for trait in GameInfo.Leaders() do
            if trait.LeaderType == leaderType and trait.InheritFrom == sTrait_Trade then 
                tValid[v] = true 
            end;
        end
	end
    return tValid
end

function CS_Cultural(sTrait_Cultural)
    local tValid = {}
    for k, v in ipairs(PlayerManager.GetWasEverAliveIDs()) do
        local leaderType = PlayerConfigurations[v]:GetLeaderTypeName()
        for trait in GameInfo.Leaders() do
            if trait.LeaderType == leaderType and trait.InheritFrom == sTrait_Cultural then 
                tValid[v] = true 
            end;
        end
    end
    return tValid
end

function CS_Militaristic(sTrait_Militaristic)
    local tValid = {}
    for k, v in ipairs(PlayerManager.GetWasEverAliveIDs()) do
        local leaderType = PlayerConfigurations[v]:GetLeaderTypeName()
        for trait in GameInfo.Leaders() do
            if trait.LeaderType == leaderType and trait.InheritFrom == sTrait_Militaristic then 
                tValid[v] = true 
            end;
        end
    end
    return tValid
end

function CS_Industrial(sTrait_Industrial)
    local tValid = {}
    for k, v in ipairs(PlayerManager.GetWasEverAliveIDs()) do
        local leaderType = PlayerConfigurations[v]:GetLeaderTypeName()
        for trait in GameInfo.Leaders() do
            if trait.LeaderType == leaderType and trait.InheritFrom == sTrait_Industrial then 
                tValid[v] = true 
            end;
        end
    end
    return tValid
end

function CS_Maritime(sTrait_Maritime)
    local tValid = {}
    for k, v in ipairs(PlayerManager.GetWasEverAliveIDs()) do
        local leaderType = PlayerConfigurations[v]:GetLeaderTypeName()
        for trait in GameInfo.Leaders() do
            if trait.LeaderType == leaderType and trait.InheritFrom == sTrait_Maritime then 
                tValid[v] = true 
            end;
        end
    end
    return tValid
end

function CS_Consular(sTrait_Consular)
    local tValid = {}
    for k, v in ipairs(PlayerManager.GetWasEverAliveIDs()) do
        local leaderType = PlayerConfigurations[v]:GetLeaderTypeName()
        for trait in GameInfo.Leaders() do
            if trait.LeaderType == leaderType and trait.InheritFrom == sTrait_Consular then 
                tValid[v] = true 
            end;
        end
    end
    return tValid
end

function CS_Entertainment(sTrait_Entertainment)
    local tValid = {}
    for k, v in ipairs(PlayerManager.GetWasEverAliveIDs()) do
        local leaderType = PlayerConfigurations[v]:GetLeaderTypeName()
        for trait in GameInfo.Leaders() do
            if trait.LeaderType == leaderType and trait.InheritFrom == sTrait_Entertainment then 
                tValid[v] = true 
            end;
        end
    end
    return tValid
end

function CS_Agricultural(sTrait_Agricultural)
    local tValid = {}
    for k, v in ipairs(PlayerManager.GetWasEverAliveIDs()) do
        local leaderType = PlayerConfigurations[v]:GetLeaderTypeName()
        for trait in GameInfo.Leaders() do
            if trait.LeaderType == leaderType and trait.InheritFrom == sTrait_Agricultural then 
                tValid[v] = true 
            end;
        end
    end
    return tValid
end


-----------------------------------------------
-- CONSTANTS
-----------------------------------------------

	local sTrait = "TRAIT_LEADER_CVS_ISKANDAR_UA"
	local sTrait_Scientific = "LEADER_MINOR_CIV_SCIENTIFIC"
	local sTrait_Religious = "LEADER_MINOR_CIV_RELIGIOUS"
	local sTrait_Trade = "LEADER_MINOR_CIV_TRADE"
	local sTrait_Cultural = "LEADER_MINOR_CIV_CULTURAL"
	local sTrait_Militaristic = "LEADER_MINOR_CIV_MILITARISTIC"
	local sTrait_Industrial = "LEADER_MINOR_CIV_INDUSTRIAL"
	local sTrait_Maritime = "CVS_LEADER_MINOR_CIV_MARITIME" -- City-States Expanded
	local sTrait_Consular = "CVS_LEADER_MINOR_CIV_CONSULAR" -- City-States Expanded
	local sTrait_Entertainment = "CVS_LEADER_MINOR_CIV_ENTERTAINMENT" -- City-States Expanded
	local sTrait_Agricultural = "CVS_LEADER_MINOR_CIV_AGRICULTURAL" -- City-States Expanded

	local tTraitPlayers = C15_GetValidTraitPlayersNew(sTrait)
	local tTraitPlayers_Religious = CS_Religious(sTrait_Religious)
	local tTraitPlayers_Scientific = CS_Scientific(sTrait_Scientific)
	local tTraitPlayers_Trade = CS_Trade(sTrait_Trade)
	local tTraitPlayers_Cultural = CS_Cultural(sTrait_Cultural)
	local tTraitPlayers_Militaristic = CS_Militaristic(sTrait_Militaristic)
	local tTraitPlayers_Industrial = CS_Industrial(sTrait_Industrial)
	local tTraitPlayers_Maritime = CS_Maritime(sTrait_Maritime) -- City-States Expanded
	local tTraitPlayers_Consular = CS_Consular(sTrait_Consular) -- City-States Expanded
	local tTraitPlayers_Entertainment = CS_Entertainment(sTrait_Entertainment) -- City-States Expanded
	local tTraitPlayers_Agricultural = CS_Agricultural(sTrait_Agricultural) -- City-States Expanded

	local iScientist = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_SCIENTIST"].Index
	local iWriter = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_WRITER"].Index
	local iArtist = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_ARTIST"].Index
	local iMusician = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_MUSICIAN"].Index
	local iProphet = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_PROPHET"].Index
	local iEngineer = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_ENGINEER"].Index
	local iMerchant = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_MERCHANT"].Index
	local iAdmiral = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_ADMIRAL"].Index
	local iGeneral = GameInfo.GreatPersonClasses["GREAT_PERSON_CLASS_GENERAL"].Index

-----------------------------------------------
-- FUNCTION CPG_Iskandar_UA_Population
-- Effect: Grant Population on Great Person Spawn
-- Credits: ChimpanG
-----------------------------------------------

function CPG_Iskandar_UA_Population(playerID, unitID, unitGreatPersonClassID, unitGreatPersonID)
	
	--print("playerID is " .. playerID)
	--print("unitID is " .. unitID)
	--print("unitGreatPersonClassID is " .. unitGreatPersonClassID)
	--print("unitGreatPersonID is " .. unitGreatPersonID)

	if tTraitPlayers[playerID] then -- Check player trait
		local iPlayer = Players[playerID]
		--print("iPlayer: ", iPlayer)

		local iPlayerUnits = iPlayer:GetUnits()
		local iUnit = iPlayerUnits:FindID(unitID)
		--print ("iUnit: ", iUnit)
		
		local iX, iY = iUnit:GetX(), iUnit:GetY() -- Use unit to determine plot coordinates
		--print("Unit at: ", iX, ", ", iY)
		
		local pUnitPlot = Map.GetPlot(iUnit:GetX(), iUnit:GetY()):GetIndex();
		--print ("pCityPlot: ", pCityPlot)

		-- Locate city
		local pCities = iPlayer:GetCities()
		for i, pCity in pCities:Members() do
			if pCity ~= nil then
				local pCityPlot = Map.GetPlot(pCity:GetX(), pCity:GetY()):GetIndex(); -- Index city plots
				--print ("pCityPlot: ", pCityPlot)
				if pCityPlot == pUnitPlot then -- check if city plot matches unit plot
					pCity:ChangePopulation(1); --increase pop by +1
					
					-- Display information for player
					if iPlayer:IsHuman() then
						Game.AddWorldViewText(playerID, Locale.Lookup("[COLOR_FLOAT_FAITH]+1 [ICON_Citizen] Population[ENDCOLOR]", 1), iUnit:GetX(), iUnit:GetY(), 0)
					end
				end
			end
		end
	end

	--print ("CPG_Iskandar_UA_Population Complete!")

end		

Events.UnitGreatPersonCreated.Add(CPG_Iskandar_UA_Population);

-----------------------------------------------
-- FUNCTION CPG_Iskandar_UA_GreatPeople_On_Envoys
-- Effect: Provides Great Person Points of the City-State's respective type when sending an Envoy
-- Credits: ChimpanG
-----------------------------------------------

function CPG_Iskandar_UA_EnvoyGP(majorID, minorID, iAmount, suzerainID, bLeviedUnits)
	
	--print("minorID is ", minorID)
	--print("majorID is ", majorID)
	--print("iAmount is ", iAmount)
	--print ("suzerainID is ", suzerainID)
	--print ("bLeviedUnits is ", bLeviedUnits)

	if tTraitPlayers[majorID] then -- Check player trait
		--print ("Player has trait")
		local iPlayer = Players[majorID]
		-- local iGPPoints = iPlayer:GetTrade():GetOutgoingRouteCapacity()*2 -- Set GPP
		local iGPPoints = ((iPlayer:GetEra()+3)*2) -- Set GPP
		--print ("iGPPoints: ", iGPPoints)

		local iCS = Players[minorID]
		--print ("iCS: ", iCS)

		local pCities = iCS:GetCities()
		local pCapital = iCS:GetCities():GetCapitalCity()
		local pCity = pCities:FindID(pCapital)
		--print ("pCity: ", pCity)

		local iX, iY = pCity:GetX(), pCity:GetY()
		--print ("iX, iY: ", iX, iY)
		
		-- RELIGIOUS
		if tTraitPlayers_Religious[minorID] then
			--print ("City-State is Religious")
			local iGP = iProphet

			iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
			--print ("Great Person points granted")

			-- Display information for the player
			if iPlayer:IsHuman() then
				Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatProphet][ENDCOLOR]", iGPPoints), iX, iY, 0)
			end
		end

		-- SCIENTIFIC
		if tTraitPlayers_Scientific[minorID] then
			--print ("City-State is Scientific")
			local iGP = iScientist

			iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
			--print ("Great Person points granted")

			-- Display information for the player
			if iPlayer:IsHuman() then
				Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatScientist][ENDCOLOR]", iGPPoints), iX, iY, 0)
			end
		end

		-- TRADE
		if tTraitPlayers_Trade[minorID] then
			--print ("City-State is Trade")
			local iGP = iMerchant

			iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
			--print ("Great Person points granted")

			-- Display information for the player
			if iPlayer:IsHuman() then
				Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatMerchant][ENDCOLOR]", iGPPoints), iX, iY, 0)
			end
		end

		-- CULTURAL
		if tTraitPlayers_Cultural[minorID] then
			--print ("City-State is Cultural")

			local iRandom = math.random (3) -- we're going to randomise to determine which Great Person Points to award
			--print ("iRandom: ", iRandom)

			-- Great Writer
			if iRandom == 1 then
				--print("iRandom is Writer")
				local iGP = iWriter

				iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
				--print ("Great Person points granted")

				-- Display information for the player
				if iPlayer:IsHuman() then
					Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatWriter][ENDCOLOR]", iGPPoints), iX, iY, 0)
				end
			end

			-- Great Artist
			if iRandom == 2 then
				--print("iRandom is Artist")
				local iGP = iArtist

				iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
				--print ("Great Person points granted")

				-- Display information for the player
				if iPlayer:IsHuman() then
					Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatArtist][ENDCOLOR]", iGPPoints), iX, iY, 0)
				end
			end

			-- Great Musician
			if iRandom == 3 then
				--print("iRandom is Musician")
				local iGP = iArtist

				iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
				--print ("Great Person points granted")

				-- Display information for the player
				if iPlayer:IsHuman() then
					Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatMusician][ENDCOLOR]", iGPPoints), iX, iY, 0)
				end
			end
		end

		-- MILITARISTIC
		if tTraitPlayers_Militaristic[minorID] then
			--print ("City-State is Militaristic")
			local iGP = iGeneral

			iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
			--print ("Great Person points granted")

			-- Display information for the player
			if iPlayer:IsHuman() then
				Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatGeneral][ENDCOLOR]", iGPPoints), iX, iY, 0)
			end
		end

		-- INDUSTRIAL
		if tTraitPlayers_Industrial[minorID] then
			--print ("City-State is Industrial")
			local iGP = iEngineer

			iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
			--print ("Great Person points granted")

			-- Display information for the player
			if iPlayer:IsHuman() then
				Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatEngineer][ENDCOLOR]", iGPPoints), iX, iY, 0)
			end
		end

		-- MARITIME
		if tTraitPlayers_Maritime[minorID] then
			--print ("City-State is Maritime")
			local iGP = iAdmiral

			iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
			--print ("Great Person points granted")

			-- Display information for the player
			if iPlayer:IsHuman() then
				Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatAdmiral][ENDCOLOR]", iGPPoints), iX, iY, 0)
			end
		end

		-- CONSULAR
		if tTraitPlayers_Consular[minorID] then
			--print ("City-State is Consular")

			local iRandom = math.random (9) -- we're going to randomise to determine which Great Person Points to award
			--print ("iRandom: ", iRandom)

			-- Great Writer
			if iRandom == 1 then
				--print("iRandom is Writer")
				local iGP = iWriter

				iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
				--print ("Great Person points granted")

				-- Display information for the player
				if iPlayer:IsHuman() then
					Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatWriter][ENDCOLOR]", iGPPoints), iX, iY, 0)
				end
			end

			-- Great Artist
			if iRandom == 2 then
				--print("iRandom is Artist")
				local iGP = iArtist

				iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
				--print ("Great Person points granted")

				-- Display information for the player
				if iPlayer:IsHuman() then
					Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatArtist][ENDCOLOR]", iGPPoints), iX, iY, 0)
				end
			end

			-- Great Musician
			if iRandom == 3 then
				--print("iRandom is Musician")
				local iGP = iMusician

				iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
				--print ("Great Person points granted")

				-- Display information for the player
				if iPlayer:IsHuman() then
					Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatMusician][ENDCOLOR]", iGPPoints), iX, iY, 0)
				end
			end

			-- Great Scientist
			if iRandom == 4 then
				--print("iRandom is Scientist")
				local iGP = iScientist

				iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
				--print ("Great Person points granted")

				-- Display information for the player
				if iPlayer:IsHuman() then
					Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatScientist][ENDCOLOR]", iGPPoints), iX, iY, 0)
				end
			end

			-- Great Merchant
			if iRandom == 5 then
				--print("iRandom is Merchant")
				local iGP = iMerchant

				iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
				--print ("Great Person points granted")

				-- Display information for the player
				if iPlayer:IsHuman() then
					Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatMerchant][ENDCOLOR]", iGPPoints), iX, iY, 0)
				end
			end

			-- Great Prophet
			if iRandom == 6 then
				--print("iRandom is Prophet")
				local iGP = iProphet

				iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
				--print ("Great Person points granted")

				-- Display information for the player
				if iPlayer:IsHuman() then
					Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatProphet][ENDCOLOR]", iGPPoints), iX, iY, 0)
				end
			end

			-- Great Engineer
			if iRandom == 7 then
				--print("iRandom is Engineer")
				local iGP = iEngineer

				iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
				--print ("Great Person points granted")

				-- Display information for the player
				if iPlayer:IsHuman() then
					Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatEngineer][ENDCOLOR]", iGPPoints), iX, iY, 0)
				end
			end

			-- Great General
			if iRandom == 8 then
				--print("iRandom is General")
				local iGP = iGeneral

				iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
				--print ("Great Person points granted")

				-- Display information for the player
				if iPlayer:IsHuman() then
					Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatGeneral][ENDCOLOR]", iGPPoints), iX, iY, 0)
				end
			end

			-- Great Admiral
			if iRandom == 9 then
				--print("iRandom is Admiral")
				local iGP = iAdmiral

				iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
				--print ("Great Person points granted")

				-- Display information for the player
				if iPlayer:IsHuman() then
					Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatAdmiral][ENDCOLOR]", iGPPoints), iX, iY, 0)
				end
			end
		end

		-- ENTERTAINMENT
		if tTraitPlayers_Entertainment[minorID] then
			--print ("City-State is Entertainment")

			local iRandom = math.random (9) -- we're going to randomise to determine which Great Person Points to award
			--print ("iRandom: ", iRandom)

			-- Great Writer
			if iRandom == 1 then
				--print("iRandom is Writer")
				local iGP = iWriter

				iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
				--print ("Great Person points granted")

				-- Display information for the player
				if iPlayer:IsHuman() then
					Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatWriter][ENDCOLOR]", iGPPoints), iX, iY, 0)
				end
			end

			-- Great Artist
			if iRandom == 2 then
				--print("iRandom is Artist")
				local iGP = iArtist

				iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
				--print ("Great Person points granted")

				-- Display information for the player
				if iPlayer:IsHuman() then
					Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatArtist][ENDCOLOR]", iGPPoints), iX, iY, 0)
				end
			end

			-- Great Musician
			if iRandom == 3 then
				--print("iRandom is Musician")
				local iGP = iMusician

				iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
				--print ("Great Person points granted")

				-- Display information for the player
				if iPlayer:IsHuman() then
					Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatMusician][ENDCOLOR]", iGPPoints), iX, iY, 0)
				end
			end

			-- Great Scientist
			if iRandom == 4 then
				--print("iRandom is Scientist")
				local iGP = iScientist

				iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
				--print ("Great Person points granted")

				-- Display information for the player
				if iPlayer:IsHuman() then
					Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatScientist][ENDCOLOR]", iGPPoints), iX, iY, 0)
				end
			end

			-- Great Merchant
			if iRandom == 5 then
				--print("iRandom is Merchant")
				local iGP = iMerchant

				iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
				--print ("Great Person points granted")

				-- Display information for the player
				if iPlayer:IsHuman() then
					Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatMerchant][ENDCOLOR]", iGPPoints), iX, iY, 0)
				end
			end

			-- Great Prophet
			if iRandom == 6 then
				--print("iRandom is Prophet")
				local iGP = iProphet

				iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
				--print ("Great Person points granted")

				-- Display information for the player
				if iPlayer:IsHuman() then
					Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatProphet][ENDCOLOR]", iGPPoints), iX, iY, 0)
				end
			end

			-- Great Engineer
			if iRandom == 7 then
				--print("iRandom is Engineer")
				local iGP = iEngineer

				iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
				--print ("Great Person points granted")

				-- Display information for the player
				if iPlayer:IsHuman() then
					Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatEngineer][ENDCOLOR]", iGPPoints), iX, iY, 0)
				end
			end

			-- Great General
			if iRandom == 8 then
				--print("iRandom is General")
				local iGP = iGeneral

				iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
				--print ("Great Person points granted")

				-- Display information for the player
				if iPlayer:IsHuman() then
					Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatGeneral][ENDCOLOR]", iGPPoints), iX, iY, 0)
				end
			end

			-- Great Admiral
			if iRandom == 9 then
				--print("iRandom is Admiral")
				local iGP = iAdmiral

				iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
				--print ("Great Person points granted")

				-- Display information for the player
				if iPlayer:IsHuman() then
					Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatAdmiral][ENDCOLOR]", iGPPoints), iX, iY, 0)
				end
			end
		end

		-- AGRICULTURAL
		if tTraitPlayers_Agricultural[minorID] then
			--print ("City-State is Agricultural")

			local iRandom = math.random (9) -- we're going to randomise to determine which Great Person Points to award
			--print ("iRandom: ", iRandom)

			-- Great Writer
			if iRandom == 1 then
				--print("iRandom is Writer")
				local iGP = iWriter

				iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
				--print ("Great Person points granted")

				-- Display information for the player
				if iPlayer:IsHuman() then
					Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatWriter][ENDCOLOR]", iGPPoints), iX, iY, 0)
				end
			end

			-- Great Artist
			if iRandom == 2 then
				--print("iRandom is Artist")
				local iGP = iArtist

				iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
				--print ("Great Person points granted")

				-- Display information for the player
				if iPlayer:IsHuman() then
					Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatArtist][ENDCOLOR]", iGPPoints), iX, iY, 0)
				end
			end

			-- Great Musician
			if iRandom == 3 then
				--print("iRandom is Musician")
				local iGP = iMusician

				iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
				--print ("Great Person points granted")

				-- Display information for the player
				if iPlayer:IsHuman() then
					Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatMusician][ENDCOLOR]", iGPPoints), iX, iY, 0)
				end
			end

			-- Great Scientist
			if iRandom == 4 then
				--print("iRandom is Scientist")
				local iGP = iScientist

				iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
				--print ("Great Person points granted")

				-- Display information for the player
				if iPlayer:IsHuman() then
					Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatScientist][ENDCOLOR]", iGPPoints), iX, iY, 0)
				end
			end

			-- Great Merchant
			if iRandom == 5 then
				--print("iRandom is Merchant")
				local iGP = iMerchant

				iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
				--print ("Great Person points granted")

				-- Display information for the player
				if iPlayer:IsHuman() then
					Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatMerchant][ENDCOLOR]", iGPPoints), iX, iY, 0)
				end
			end

			-- Great Prophet
			if iRandom == 6 then
				--print("iRandom is Prophet")
				local iGP = iProphet

				iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
				--print ("Great Person points granted")

				-- Display information for the player
				if iPlayer:IsHuman() then
					Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatProphet][ENDCOLOR]", iGPPoints), iX, iY, 0)
				end
			end

			-- Great Engineer
			if iRandom == 7 then
				--print("iRandom is Engineer")
				local iGP = iEngineer

				iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
				--print ("Great Person points granted")

				-- Display information for the player
				if iPlayer:IsHuman() then
					Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatEngineer][ENDCOLOR]", iGPPoints), iX, iY, 0)
				end
			end

			-- Great General
			if iRandom == 8 then
				--print("iRandom is General")
				local iGP = iGeneral

				iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
				--print ("Great Person points granted")

				-- Display information for the player
				if iPlayer:IsHuman() then
					Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatGeneral][ENDCOLOR]", iGPPoints), iX, iY, 0)
				end
			end

			-- Great Admiral
			if iRandom == 9 then
				--print("iRandom is Admiral")
				local iGP = iAdmiral

				iPlayer:GetGreatPeoplePoints():ChangePointsTotal(iGP, iGPPoints) -- Grant GPP
				--print ("Great Person points granted")

				-- Display information for the player
				if iPlayer:IsHuman() then
					Game.AddWorldViewText(majorID, Locale.Lookup("[COLOR_FLOAT_FAITH]+{1_Num} [ICON_GreatAdmiral][ENDCOLOR]", iGPPoints), iX, iY, 0)
				end
			end
		end
	end

	--print ("CPG_Iskandar_UA_EnvoyGP Complete!")

end

GameEvents.OnPlayerGaveInfluenceToken.Add(CPG_Iskandar_UA_EnvoyGP);