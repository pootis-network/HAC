local DontBother = {	"a:", "b:", "c:", "d:", "e:", "f:", "g:",	"h:", "i:", "j:", "k:", "l:",	"m:", "n:", "o:", "p:", "q:",	"r:", "s:", "t:", "u:", "v:",	"w:", "x:", "y:", "z:",	"0", "1", "2", "3", "4", "5",	"6", "7", "8", "9", "10", "11",	"(0)", "(1)", "(2)", "(3)", "(4)", "(5)",	"(6", "(7)", "(8)", "(9)", "(10)", "(11)",	"autorun", "mp", "geams", "stim",	"back", "up", "pc",	"half", "life", "half-life", "repack", "by",	"ultimate", "edition", "hl", "no-steam", "no",	"source", "engine", "2007", "2008", "2009", "2010", "2011", "2012", "garry's", "mod",	"engine1", "engine2", "engine3", "engine4",	"new", "folder", "drive", "file", "cuocuo",	"archivos", "users", "library", "application", "support",	"documents", "and", "settings", "programmi", "shsteam",	"de", "sh", "hacks", "steamfolder", "crack", "steamspel",	"team", "client", "steamup", "psteam", "game",	"v3", "v2", "v1", "downloads", "programmer", "programos",	"x86valvesteam", "programa", "programas", "program", "files", "programme",	"programok", "steamup", "steamup1", "steamup2", "steamup3",	"x86", "(x86)", "volumes", "macintosh", "hd",	"friends", "games1", "games2", "games3",	"pcspil", "desktop", "programs", "userdata", "remote", "local", 	"pacsteamt", "pacsteam", "cracked", "progamas",	"valve", "steam", "steam1", "steam2", "steam3", "games",	"steamapps", "disk", "folder", "new", "gmod", "backup",	"garrysmod", "windows.old", "old", "windows",	"gameinfo.txt",	"sourcemods",	"orangebox", "hl2",}local function GetSteamName()	local SteamAccount = "None"	local AccTable = {}		local Path = util.RelativePathToFull("gameinfo.txt")	Path = string.gsub(Path, "\\", " ")	Path = string.gsub(Path, "/", " ")	Path = string.Explode(" ", Path)		for k,v in ipairs(Path) do		if not table.HasValue(DontBother, string.lower(v)) then			table.insert(AccTable, v)		end	end		if #AccTable >= 1 then		SteamAccount = table.concat(AccTable, " ")	end	return string.Trim(SteamAccount)endconcommand.Add("ulx_spawnplayer", function(ply,cmd,args)	RunConsoleCommand("ulx_spawnedplayer", GetSteamName(), "IceCream")end)local function RefreshRanks(ply,cmd,args)	if (#args >= 1) and args[1] == "Ping" then		RunConsoleCommand("gm_dong", GetSteamName(), "HACReport")	endendconcommand.Add("gm_request", RefreshRanks)