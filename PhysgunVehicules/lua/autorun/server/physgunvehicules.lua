-- Allows admins to physgun vehicules. If you have FPP, remove prop_vehicle_jeep from the blocked entities. This script will do the rest. 

local function PhysgunVehicules(ply, ent)
 
if ( ent:IsVehicle() or (ent:GetClass():lower() == "prop_vehicle_jeep") ) then
	if ply:IsAdmin() then
		return true
	else
		return false
	end
end

end
 
hook.Add("PhysgunPickup", "PhysgunVehicules", PhysgunVehicules)