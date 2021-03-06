----------------------------------------------------------------------------------------------------
-- ManureSystemPremiumIntegral30000
----------------------------------------------------------------------------------------------------
-- Purpose: Insert Manure System function into the Veenhuis PremiumIntegral30000.
--
-- Copyright (c) Wopster, 2019
----------------------------------------------------------------------------------------------------

---@class ManureSystemPremiumIntegral30000
ManureSystemPremiumIntegral30000 = {}

function ManureSystemPremiumIntegral30000.prerequisitesPresent(specializations)
    return true
end

function ManureSystemPremiumIntegral30000.registerEventListeners(vehicleType)
    SpecializationUtil.registerEventListener(vehicleType, "onPreLoad", ManureSystemPremiumIntegral30000)
end

function ManureSystemPremiumIntegral30000:onPreLoad(savegame)
    setXMLFloat(self.xmlFile, "vehicle.manureSystemPumpMotor#litersPerSecond", 170)
    setXMLFloat(self.xmlFile, "vehicle.manureSystemPumpMotor#toReachMaxEfficiencyTime", 1100)

    setXMLString(self.xmlFile, ("vehicle.manureSystemConnectors.connector(%d)#type"):format(0), "COUPLING")
    setXMLBool(self.xmlFile, ("vehicle.manureSystemConnectors.connector(%d)#createNode"):format(0), true)
    setXMLString(self.xmlFile, ("vehicle.manureSystemConnectors.connector(%d)#position"):format(0), "1.2 0.39 3.253")
    setXMLString(self.xmlFile, ("vehicle.manureSystemConnectors.connector(%d)#rotation"):format(0), "11 85 0")
end
