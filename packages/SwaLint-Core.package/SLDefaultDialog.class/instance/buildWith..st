building
buildWith: aBuilder
	| window |
	window := self buildWindowWith: aBuilder specs: {
		self categoriesFrame -> [self buildCategoriesWith: aBuilder].
		self classesFrame -> [self buildClassesWith: aBuilder].
		self testsFrame -> [self buildTestListWith: aBuilder].
		self testCategoriesFrame -> [self buildTestCategoryListWith: aBuilder].
		self buttonsFrame -> [self buildButtonsWith: aBuilder]
	}.
	^ aBuilder build: window