AddCSLuaFile()

SWEP.HoldType			= "grenade"

if CLIENT then
   SWEP.PrintName = "Manhacknade"
   SWEP.Slot = 3

   SWEP.Icon = "vgui/ttt/manhacknade"
end

SWEP.Base = "weapon_tttbasegrenade"

SWEP.HoldType = "grenade"
SWEP.Weight = 5

SWEP.UseHands = true
SWEP.ViewModelFlip = false
SWEP.ViewModelFOV = 54
SWEP.ViewModel = "models/weapons/cstrike/c_eq_fraggrenade.mdl"
SWEP.WorldModel	= "models/weapons/w_eq_fraggrenade.mdl"

SWEP.Kind = WEAPON_NADE

SWEP.AutoSpawnable = false

SWEP.CanBuy = { ROLE_TRAITOR }

SWEP.InLoadoutFor = { nil }

SWEP.LimitedStock = false

SWEP.AllowDrop = true

SWEP.NoSights = true

function SWEP:GetGrenadeName()
   return "ttt_manhacknade_proj"
end

if CLIENT then
   SWEP.EquipMenuData = {
      type = "Grenade",
      desc = "A grenade that spawns manhacks"
   }
end