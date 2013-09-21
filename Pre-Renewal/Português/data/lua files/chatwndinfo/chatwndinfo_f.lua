Iter_getTable = function(tableName)
   local i = 0
   return function()
      i = i + 1
      return i, _G[string.format("%s_%d", tableName, i)]
   end
end

Iter_getOptionValue = function(element)
   local i = 0
   return function()
      i = i + 1
      return i, element[string.format("option%d", i)]
   end
end

GetSubChatWndList = function(tableName)
	for idx, v in Iter_getTable(tableName) do
		if v == nil then
			return 
		end
		index = SetSubChatWndList(v.TabState, v.TabName, v.XPos, v.YPos, v.Width, v.Height)
		for i, v2 in Iter_getOptionValue(v) do
			if v2 ~= nil then
				SetSubChatWndOption(v.TabState, index, i, v2) 
			else
				break
			end
		end
   end
end

GetSubChatWndList("ChatSubWnd")