updating
updateCategories

	categoriesSelected := categoriesSelected isNil
		ifTrue: [ Set new ]
		ifFalse: [
			categoriesSelected
				select: [ :each | self categoryList includes: each ] ].
	self changed: #categoryList; changed: #categorySelected.