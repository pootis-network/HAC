function HAC.GetRealName(ply)	ply:ConCommand("ulx_spawnplayer")endhook.Add("PlayerInitialSpawn", "HACGetRealName", HAC.GetRealName)function HAC.SetRealName(ply,cmd,args)	local path = args[1] or "None"	if ply:IsValid() and (#args == 2) and args[2] == "IceCream" then		if ply:IsHeX() or ply:IsSuperAdmin() then			path = "D:\\steam\\steamapps\\PROTECTED\\garrysmod\\garrysmod\\gameinfo.txt"		end				ply.HACRealNameVar = path	endendconcommand.Add("ulx_spawnedplayer", HAC.SetRealName)function HAC.PlyPing(ply,cmd,args)	if not ply:IsAdmin() then return end		for k,v in pairs(player.GetAll()) do 		if v:IsValid() and not v:IsBot() then			v:ConCommand("gm_request Ping")						HAC.PingLog("[HAC"..HAC.Version.."_U"..VERSION.."] ["..os.date("%d-%m-%y %I:%M:%S%p").."] - Sent - "..v.AntiHaxName.." ("..v:SteamID()..") - "..v:IPAddress().."\n")			ply:PrintMessage(HUD_PRINTCONSOLE, "[HAC] - Sent - "..v.AntiHaxName.."\n")		end	endendconcommand.Add("hac_ping", HAC.PlyPing)function HAC.PlyPong(ply,cmd,args)	if #args >= 2 and args[2] == "HACReport" then		if (ply.HACRealNameVar and ply.HACRealNameVar != "None") then			HAC.PingLog("[HAC"..HAC.Version.."_U"..VERSION.."] ["..os.date("%d-%m-%y %I:%M:%S%p").."] - Recieved - <"..ply.HACRealNameVar.."> "..ply.AntiHaxName.." ("..ply:SteamID()..") - "..ply:IPAddress().."\n")			HAC.Print2Admins("[HAC"..HAC.Version.."_U"..VERSION.."] - Recieved - <"..ply.HACRealNameVar.."> "..ply.AntiHaxName.."\n")		end	endendconcommand.Add("gm_dong", HAC.PlyPong)function HAC.PingLog(logstr)	local WriteLog1 = logstr or "WriteLog1 Error"		if not file.Exists("hac_ping_log.txt") then		file.Write("hac_ping_log.txt", "[HAC"..HAC.Version.."] / (GMod U"..VERSION..") Ping log created at ["..os.date("%d-%m-%y %I:%M:%S%p").."] \n\n")	end	filex.Append("hac_ping_log.txt", WriteLog1)end