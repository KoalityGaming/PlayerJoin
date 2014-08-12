// client side apple

// Connect
function player_connect( data )
local name1 = data:ReadString()
local nickteamcolour1 = team.GetColor(data:ReadShort())
	chat.AddText( Color( 255, 0, 255 ), "[Server] ", nickteamcolour1, name1, Color( 255, 255, 255 ), " has joined the server." )
	surface.PlaySound( "playerjoin/kttjoin.mp3" )
end
usermessage.Hook("player_connect", player_connect)

// Disconnect
function player_disconnect( data )
local name2 = data:ReadString()
local nickteamcolour2 = team.GetColor(data:ReadShort())
	chat.AddText( Color( 255, 0, 255 ), "[Server] ", nickteamcolour2, name2, Color( 255, 255, 255 ), " has left the server." )
	surface.PlaySound( "playerjoin/kttjoin.mp3" )
end
usermessage.Hook("player_disconnect", player_disconnect)