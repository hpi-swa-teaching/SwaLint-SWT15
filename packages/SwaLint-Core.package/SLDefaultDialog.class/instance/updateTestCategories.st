updating
updateTestCategories

	testCategoriesSelected := testCategoriesSelected isNil
		ifTrue: [ Set new ]
		ifFalse: [testCategoriesSelected select: [ :each | self testCategories includes: each ]].
	self changed: #testCategories; changed: #testCategorySelected.