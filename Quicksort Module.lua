-- Module by AverageLua --

local quicksortModule = {}

local function partition(array, pivot, size)
	local x = array[size]
	local i = pivot - 1

	for j = pivot, size - 1 do
		if array[j] <= x then
			i = i + 1

			local temp = array[i]
			array[i] = array[j]
			array[j] = temp
		end
	end

	local temp = array[i + 1]

	array[i + 1] = array[size]
	array[size] = temp

	return i + 1
end

local function quickSort(array, pivot, size)
	local pivot = pivot or 1
	local size = size or #array

	if pivot < size then
		local q = partition(array, pivot, size)

		quickSort(array, pivot, q - 1)
		quickSort(array, q + 1, size)
	end
end

function quicksortModule.sortArray(array, reverse)
	if reverse then
		quickSort(array)
		
		for i = 1, math.floor(#array/2) do
			local j = #array - i + 1
			array[i], array[j] = array[j], array[i]
		end
		
		return array
	else
		quickSort(array)
		return array	
	end
end

function quicksortModule.printTable(tableToPrint)
	for i, v in ipairs(tableToPrint) do
		if i ~= #tableToPrint then
			print(i .. " = " .. v.. ",")
		else
			print(i .. " = " .. v)
		end
	end
end

return quicksortModule
