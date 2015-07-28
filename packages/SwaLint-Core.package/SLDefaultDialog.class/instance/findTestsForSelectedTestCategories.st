updating
findTestsForSelectedTestCategories
	| items |
	testCategoriesSelected isEmpty 
		ifTrue: [ ^ Set new ].
	items := testCategoriesSelected gather: [ :category | environment testsAtCategory: category ].
	^ items asSet