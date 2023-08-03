local type_utils = {}

function type_utils.is_iterable_of_type(iterable, t)
	if type(iterable) ~= "table" then
		return false
	end

	if type(t) == "string" then
		for _, value in ipairs(iterable) do
			if getmetatable(value) ~= t then
				return false
			end
		end
	else
		for _, value in ipairs(iterable) do
			if getmetatable(value) ~= t then
				return false
			end
		end
	end
	return true
end

return type_utils
