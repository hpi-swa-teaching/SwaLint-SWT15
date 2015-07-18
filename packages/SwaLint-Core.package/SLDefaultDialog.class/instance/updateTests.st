updating
updateTests
	| testsForCategories |
	testsForCategories := self findTestsForSelectedTestCategories.
	tests := testsForCategories sorted: [ :aTest :anotherTest | aTest name <= anotherTest name ].
	testIndex := 0.
	testsSelected := testsSelected isNil
		ifTrue: [ testsForCategories ]
		ifFalse: [ 
			testsSelected select: [ :each | testsForCategories includes: each ]].
	self changed: #testList; changed: #testSelected.