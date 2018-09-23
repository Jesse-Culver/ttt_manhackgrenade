AddCSLuaFile()

ENT.Type = "anim"
ENT.Base = "ttt_basegrenade_proj"
ENT.Model = Model( "models/weapons/w_eq_fraggrenade_thrown.mdl" )

function ENT:Initialize()
timer.Create("tickingsound",0.1, 25, function()
	if SERVER then
		self:EmitSound("weapons/grenade/tick1.wav")
	end
	end)
return self.BaseClass.Initialize(self)
end

function ENT:Explode( tr )
	if SERVER then
		local manhackcount = GetConVar( "ttt_manhackgrenade_count" ):GetInt()
		self:EmitSound("npc/roller/mine/rmine_explode_shock1.wav")
		i = manhackcount
		while i > 0 do
			local ent = ents.Create("npc_manhack")
			local vec = Vector(0, 0, math.random()*2-1):GetNormalized()
			ent:SetPos(self:GetPos() + vec * 15)
			ent:SetAngles(vec:Angle())
			ent:Spawn()
			ent:SetVelocity(vec * 700)
			i = i -1
		end
		self:SetNoDraw(true)
		self:SetSolid(SOLID_NONE)
		self:Remove()
	end
end
