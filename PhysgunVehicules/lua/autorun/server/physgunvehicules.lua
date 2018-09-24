-- Allows admins to physgun vehicules. If you have FPP, remove prop_vehicle_jeep from the blocked entities. This script will do the rest.
-- This addon doesn't need DarkRP to work.

--[[------------------------------
		Config
------------------------------]]--

local PhysgunVehiculesConfig = {} -- Don't touch

local PhysgunVehiculesConfig_Restriction = 1 -- Who can physgun vehicules   0 = No one  1 = admins and superadmins  2 = superadmins only



--[[------------------------------
			Code
------------------------------]]--

local function PhysgunVehicules(ply, ent)
 
if ( ent:IsVehicle() or (ent:GetClass():lower() == "prop_vehicle_jeep") ) then
	if (PhysgunVehiculesConfig_Restriction == 0) then
		return false
	elseif (PhysgunVehiculesConfig_Restriction == 2) then
		if ply:IsSuperAdmin() then
			return true
		else
			return false
		end
	else
		if ply:IsAdmin() then
			return true
		else
			return false
		end
	end
end

end
 
hook.Add("PhysgunPickup", "PhysgunVehicules", PhysgunVehicules)
