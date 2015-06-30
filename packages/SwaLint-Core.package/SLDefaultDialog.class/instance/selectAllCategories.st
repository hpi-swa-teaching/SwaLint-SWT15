accessing-categories
selectAllCategories

	categoriesSelected := self categoryList asSet.
	self changed: #allSelections; changed: #categorySelected; updateClasses