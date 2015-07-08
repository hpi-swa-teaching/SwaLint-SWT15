building
buildWith: aBuilder
	| window tool |
	window := aBuilder pluggableWindowSpec new
		model: self; label: #windowTitle;
		children: (OrderedCollection new 
			add: ((self buildCategoriesWith: aBuilder)
				frame: self categoriesFrame;
				yourself);
			add: ((self buildClassesWith: aBuilder)
				frame: self classesFrame;
				yourself);
			add: ((self buildTestListWith: aBuilder)
				frame: self testsFrame;
				yourself);
			add: ((self buildTestCategoryListWith: aBuilder)
				frame: self testCategoriesFrame;
				yourself);
			add: ((self buildResultsWith: aBuilder)
				frame: self resultsFrame;
				yourself);
			add: ((self buildButtonsWith: aBuilder)
				frame: self buttonsFrame;
				yourself);
			yourself);
		yourself.
	tool :=aBuilder build: window.
	^tool