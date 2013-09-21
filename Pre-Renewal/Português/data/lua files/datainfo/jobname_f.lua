ReqJobName = function(jobID)
	if JobNameTable[jobID] ~= nil then
		return JobNameTable[jobID]
	end
	return ""
end

GetJobString = function(jobID)
	for k, v in pairs(jobtbl) do
		if v == jobID then
			return k
		end
	end
	return ""
end

GetPetIllustName = function(jobID)
	if PetIllustNameTable[jobID] ~= nil then
		return PetIllustNameTable[jobID]
	end
	return "유저인터페이스\\illust\\펫_포링.bmp"
end

GetPetAccActName = function(accID)
	if PetAccActNameTable[accID] ~= nil then
		return PetAccActNameTable[accID]
	end
	return "몬스터\\chocho_방독면.act"
end

IsPetAccessory = function(accID)
	if PetAccIDs.ACC_FIRST < accID and accID < PetAccIDs.ACC_LAST then
		return true
	end
	return false
end