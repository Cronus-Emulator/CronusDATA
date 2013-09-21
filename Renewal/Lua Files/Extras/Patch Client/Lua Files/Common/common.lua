SERVER_TYPE = {PRIMARY = 0, SAKRAY = 1, RENEWAL_SAKRAY = 2, INDOOR = 3, QM_PRIMARY = 4, GUILD = 5, PRIMARY_FREE = 6}
NATION_TYPE = {KOREA = 0, USA = 1, UAE = 2, CN = 3}
ToolTipStyle = {TTS_BASIC = 0, TTS_BALLOON = 1, TTS_NON = 2}
getTableSize = function(t)
   local size = 0
   for _, _ in pairs(t) do
      size = size + 1
   end
   return size
end

SetServerType = function(serverType)
   if g_nServerType == nil then
      g_nServerType = serverType
   end
end

SetGameExcuteArg = function(GameExcuteArg)
   g_strExcuteArg = GameExcuteArg
end

AddGameExcuteArgForWeb = function(GameExcuteArg)
   g_strExcuteArg = g_strExcuteArg .. " -t:"
   g_strExcuteArg = g_strExcuteArg .. GameExcuteArg
end

DeleteFileList = function()
   if DELETE_FILE ~= nil then
      local idx = 1
      local file = DELETE_FILE[idx]
      while file ~= nil do
         C_AddDeleteFileList("data\\" .. file)
         idx = idx + 1
         file = DELETE_FILE[idx]
   end
   end
end

BitmapButtonList = {}
ExecuteButton = function(btnID)
   if BitmapButtonList ~= nil then
      local btn = BitmapButtonList[btnID + 1]
      if btn ~= nil then
         btn.Execute()
      end
   end
end

ExecuteGame = function()
   StartButton.Execute()
end

CreateButtons = function()
   InitButtonInfos()
   if BitmapButtonList ~= nil then
      local idx = 1
      local btn = BitmapButtonList[idx]
      while btn ~= nil do
         btn.btnID = idx - 1
         local bEnable = 1
         if btn.bEnable ~= nil then
            bEnable = btn.bEnable
         end
         C_CreateButton(btn.btnID, btn.x, btn.y, btn.w, btn.h, btn.ToolTipType, btn.ToolTip, btn.SkinName, bEnable)
         idx = idx + 1
         btn = BitmapButtonList[idx]
   end
   end
end

AddButtonToTable = function(button)
   local nTable = getTableSize(BitmapButtonList)
   BitmapButtonList[nTable + 1] = button
end

TextList = {}
CreateTextInfos = function()
   InitTextInfos()
   if TextList ~= nil then
      local idx = 1
      local textInfo = TextList[idx]
      while textInfo ~= nil do
         C_AddTextList(textInfo[1], textInfo[2], textInfo[3], textInfo[4], textInfo[5], textInfo[6], textInfo[7], textInfo[8])
         idx = idx + 1
         textInfo = TextList[idx]
   end
   end
end

AddTextToTable = function(x, y, text, fontFace, fontSize, r, g, b)
   if fontFace == nil then
      fontFace = "Verdana"
   end
   if fontSize == nil then
      fontSize = 10
   end
   if r == nil then
      r = 0
   end
   if g == nil then
      g = 0
   end
   if b == nil then
      b = 0
   end
   local textInfo = {x, y, text, fontFace, fontSize, r, g, b}
   local nTable = getTableSize(TextList)
   TextList[nTable + 1] = textInfo
end


