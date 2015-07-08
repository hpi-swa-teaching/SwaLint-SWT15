accessing-categories
selectAllCategories

	categoriesSelected := self categoryList asSet.
	self changed: #categorySelected; updateClasses