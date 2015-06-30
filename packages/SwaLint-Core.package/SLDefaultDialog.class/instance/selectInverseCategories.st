accessing-categories
selectInverseCategories

	categoriesSelected := self categoryList asSet 
		removeAll: categoriesSelected;
		yourself.
	self changed: #allSelections; changed: #categorySelected; updateClasses