accessing-results
resultList

	^ self results collect: [:each | (each format: self orderBySymbol) addAttribute: TextColor green; yourself ]