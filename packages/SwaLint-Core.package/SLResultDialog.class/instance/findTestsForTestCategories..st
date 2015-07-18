updating
findTestsForTestCategories: aCollection
	| items chosenTests |
	aCollection isEmpty 
		ifTrue: [ ^ Set new ].
	chosenTests := self environment ifNil: [Set new] ifNotNil: [self environment tests].
	items := aCollection gather: [ :category | SwaLint testsAtCategory: category ].
	items := items select: [ :each | (chosenTests collect: [ :test | test format]) includes: each format ].
	^ items asSet