toInt = function(value)
   if value ~= nill then
      return value
   else
      return 0
   end
end

toStr = function(value)
   if value ~= nill then
      return value
   else
      return ""
   end
end

getTableSize = function(t)
   local size = 0
   for _, _ in pairs(t) do
      size = size + 1
   end
   return size
end


