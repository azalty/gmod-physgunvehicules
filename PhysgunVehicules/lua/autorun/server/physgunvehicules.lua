-- Allows admins to physgun vehicules. If you have FPP, remove prop_vehicle_jeep from the blocked entities. This script will do the rest.
-- This addon doesn't need DarkRP to work.

-- CONFIG
local CanPhysgunVehicles = 1 -- 0 -> nobody, 1 -> admin inherited groups, 2 -> superadmin inherited groups

hook.Add("PhysgunPickup", "PhysgunVehicles", function(ply, ent)
	if not ent:IsVehicle() or ent:GetClass():lower() ~= "prop_vehicle_jeep" then return end

	if CanPhysgunVehicles == 0 then
		return false
	end

	if CanPhysgunVehicles == 1 and ply:IsAdmin() then
		return true
	end

	if CanPhysgunVehicles == 2 and ply:IsSuperAdmin() then
		return true
	end
end)
