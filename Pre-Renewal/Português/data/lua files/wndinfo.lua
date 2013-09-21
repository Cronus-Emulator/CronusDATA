WID_HOTKEYWND = 156
WID_JOINTO_BATTLEFIELDWND = 157
WID_RELOADLUASCRIPTWND = 158
WID_QUIKSLOTWND = 159
WID_BATTLEFIELD_DESCRIBEWND = 165
WID_BATTLEFIELD_STATUSWND = 166
WID_BATTLEFIELD_HELPWND = 167
WID_SEARCH_STORE_INFO = 181
WID_BUTTONS_OF_BASICWND = 182
WID_SHOWINFO_TESTLAYER = 183
UIHotKeyWnd = {width = 436, height = 432, x = 300, y = 100, bgColor = {255, 255, 255}, baseButton = 1, closeButton = 1}
UIJoinToBattleFieldWnd = {width = 280, height = 186, x = 300, y = 120, baseButton = 1, closeButton = 1}
UIReloadLuaScript = {width = 36, height = 34, x = 900, y = 0, baseButton = 1, closeButton = 1}
UIBattleFieldDescribeWnd = {width = 280, height = 360, x = 350, y = 150, baseButton = 1, closeButton = 1}
UIBattleFieldStatusWnd = {width = 280, height = 186, x = 350, y = 150, baseButton = 1, closeButton = 1}
UIBattleFieldHelpWnd = {width = 280, height = 360, x = 350, y = 150, baseButton = 1, closeButton = 1}
UIQuikSlotWnd = {width = 77, height = 34, x = 900, y = 0}
UISerachStoreInfoWnd = {width = 445, height = 380, x = 300, y = 100}
UIButtonsOfBasicWnd = {width = 220, height = 80, x = 300, y = 100}
UIShowInfoOfTestLayer = {width = 380, height = 200, x = 300, y = 100}
GetWindowString = function(windowID)
   if windowID == WID_HOTKEYWND then
      return "UIHotKeyWnd"
   elseif windowID == WID_JOINTO_BATTLEFIELDWND then
      return "UIJoinToBattleFieldWnd"
   elseif windowID == WID_RELOADLUASCRIPTWND then
      return "UIReloadLuaScript"
   elseif windowID == WID_QUIKSLOTWND then
      return "UIQuikSlotWnd"
   elseif windowID == WID_BATTLEFIELD_DESCRIBEWND then
      return "UIBattleFieldDescribeWnd"
   elseif windowID == WID_BATTLEFIELD_STATUSWND then
      return "UIBattleFieldStatusWnd"
   elseif windowID == WID_BATTLEFIELD_HELPWND then
      return "UIBattleFieldHelpWnd"
   elseif windowID == WID_SEARCH_STORE_INFO then
      return "UISerachStoreInfoWnd"
   elseif windowID == WID_BUTTONS_OF_BASICWND then
      return "UIButtonsOfBasicWnd"
   elseif windowID == WID_SHOWINFO_TESTLAYER then
      return "UIShowInfoOfTestLayer"
   end
   return nil
end

GetWindowInfo = function(windowID)
   local wnd = nil
   local wndStr = GetWindowString(windowID)
   if wndStr ~= nil then
      wnd = _G[wndStr]
   end
   if wnd ~= nil then
      return wnd.width, wnd.height, wnd.x, wnd.y
   end
end

GetSysButtonInfo = function(windowID)
   local wnd = nil
   local wndStr = GetWindowString(windowID)
   if wndStr ~= nil then
      wnd = _G[wndStr]
   end
   if wnd ~= nil then
      return wnd.baseButton, wnd.closeButton
   end
end