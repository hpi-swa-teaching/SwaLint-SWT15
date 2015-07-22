list ordering
listElementsOrdered: aCollection

	^ (listOrdering = #testsModel) 
		ifTrue: [self testOrderedList: aCollection]
		ifFalse: [self objectOrderedList: aCollection]