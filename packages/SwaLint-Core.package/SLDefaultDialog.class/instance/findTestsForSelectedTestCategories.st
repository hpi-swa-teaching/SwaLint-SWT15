updating
findTestsForSelectedTestCategories
	| items |
	testCategoriesSelected isEmpty 
		ifTrue: [ ^ Set new ].
	items := testCategoriesSelected gather: [ :category | SwaLint testsAtCategory: category ].
	^ items asSet