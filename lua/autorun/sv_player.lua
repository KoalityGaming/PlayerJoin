// server side apple
AddCSLuaFile( "cl_player.lua"  )
resource.AddFile("sound/playerjoin/kttjoin.mp3")

//Connect
function FirstSpawn( ply )
	timer.Create( "server_join_timer_wait", 3, 1, function()
colour1 = ply:Team()
spawn1 = ply:Nick()
	umsg.Start( "player_connect")
	umsg.String(spawn1)
	umsg.Short(colour1)
	umsg.End()
Msg("Player " .. spawn1 .. " has joined the server.\n")
end)
end
  
hook.Add( "PlayerInitialSpawn", "playerInitialSpawn", FirstSpawn )
 
//Disconnect
function PlayerDisconnect( ply )
colour2 = ply:Team()
spawn2 = ply:Nick()
	umsg.Start( "player_disconnect")
	umsg.String(spawn2)
	umsg.Short(colour2)
	umsg.End()
Msg("Player " .. spawn2 .. " has left the server.\n")
end
  
hook.Add( "PlayerDisconnected", "playerDisconnected", PlayerDisconnect )