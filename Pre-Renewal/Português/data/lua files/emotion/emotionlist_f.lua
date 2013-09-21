InsertEmotionListTable = function(emotionType, MsgStrID, actionNum)
   EmotionList[emotionType] = {}
   EmotionList[emotionType].actionNum = actionNum
   if MsgStrID ~= -1 then
      msgStr = c_GetMsgString(MsgStrID)
      if msgStr ~= nil and msgStr ~= "" then
         EmotionList[emotionType].msgStr = msgStr
      end
   end
end

InsertEmotionMsgListTable = function(emotionType, MsgStr)
   if MsgStr ~= nil and MsgStr ~= "" then
      EmotionMsgList[MsgStr] = {}
      EmotionMsgList[MsgStr] = emotionType
   end
end

GetEmotionMsg = function(index)
   local emotionType = EMOTION_ORDERLIST[index + 1]
   if emotionType ~= nil then
      local emotionMsg = EmotionList[emotionType].msgStr
      if emotionMsg ~= nil then
         return emotionMsg
      else
         return ""
      end
   else
      return ""
   end
end

GetEmotionActionByWndIdx = function(index)
   local emotionType = EMOTION_ORDERLIST[index + 1]
   if emotionType ~= nil then
      local emotionAction = EmotionList[emotionType].actionNum
      if emotionAction ~= nil then
         return emotionAction
      else
         return -1
      end
   else
      return -1
   end
end

GetEmotionAction = function(emotionType)
   local emotionAction = EmotionList[emotionType].actionNum
   if emotionAction ~= nil then
      return emotionAction
   else
      return -1
   end
end

ReqEmotionByIndex = function(index)
   local emotionType = EMOTION_ORDERLIST[index + 1]
   if emotionType ~= nil and emotionType >= 0 then
      c_ReqEmotion(emotionType)
   end
end

ReqEmotionByMsgStr = function(msgStr)
   local emotionType = EmotionMsgList[msgStr]
   if emotionType ~= nil and emotionType >= 0 then
      c_ReqEmotion(emotionType)
      return emotionType
   else
      return -1
   end
end

GetEmotionOrderListSize = function()
	return getTableSize(EMOTION_ORDERLIST)
end