updating
findTestsForTestCategories: aCollection
	| items |
	aCollection isEmpty 
		ifTrue: [ ^ Set new ].
	items := aCollection gather: [ :category | SwaLint testsAtCategory: category ].
	^ items asSet