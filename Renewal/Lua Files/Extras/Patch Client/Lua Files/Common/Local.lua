g_nNationType = NATION_TYPE.KOREA
LoadLocalFiles = function()
	if g_nNationType == NATION_TYPE.KOREA then
		require("./PatchClient/Lua Files/ServerInfoz/ServerInfo_KR")
		require("./PatchClient/Lua Files/SkinInfoz/SkinInfo_KR")
		else if g_nNationType == NATION_TYPE.USA then
			require("./PatchClient/Lua Files/ServerInfoz/ServerInfo_USA")
			require("./PatchClient/Lua Files/SkinInfoz/SkinInfo_USA")
			else if g_nNationType == NATION_TYPE.UAE then
				require("./PatchClient/Lua Files/ServerInfoz/ServerInfo_UAE")
				require("./PatchClient/Lua Files/SkinInfoz/SkinInfo_UAE")
				else if g_nNationType == NATION_TYPE.CN then
					require("./PatchClient/Lua Files/ServerInfoz/ServerInfo_CN")
					require("./PatchClient/Lua Files/SkinInfoz/SkinInfo_CN")
				end
			end
		end
	end
end

LoadLocalFiles()

