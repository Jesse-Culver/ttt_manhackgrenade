if SERVER then

  if !ConVarExists("ttt_manhackgrenade_count") then
    CreateConVar("ttt_manhackgrenade_count", 10, FCVAR_ARCHIVE, "The number of manhacks to spawn when it explodes")
  end
end