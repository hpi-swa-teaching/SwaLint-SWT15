actions
changeResultOrdering
	| sortBySymbol |
	self toggleResultOrdering.
	sortBySymbol := isOrderedByTests 
		ifTrue: [#tests]
		ifFalse: [#classes].
	self environment results listOrderBy: sortBySymbol.
	self updateResults.