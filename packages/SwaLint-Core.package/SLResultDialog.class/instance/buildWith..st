building
buildWith: aBuilder
	| window tool |
	window := self buildWindowWith: aBuilder specs: {
		self categoriesFrame -> [self buildCategoriesWith: aBuilder].
		self classesFrame -> [self buildClassesWith: aBuilder].
		self testsFrame -> [self buildTestListWith: aBuilder].
		self testCategoriesFrame -> [self buildTestCategoryListWith: aBuilder].
		self resultsFrame -> [self buildResultsWith: aBuilder].
		self buttonsFrame -> [self buildButtonsWith: aBuilder]
		}.

	tool := aBuilder build: window.
	^tool