ReqRobSprName = function(index)
   if RobeNameTable[index] == nil then
      return ""
   end
   local NameMsg = RobeNameTable[index]
   if NameMsg ~= nil then
      return NameMsg
   else
      return ""
   end
end


