updating
updateTests
	| testsForCategories |
	testsForCategories := self findTestsForTestCategories: testCategoriesSelected.
	tests := testsForCategories asArray
		"sort: [ :a :b | self sortClass: a before: b ]".
	testIndex := 0.
	testsSelected := testsSelected isNil
		ifTrue: [ testsForCategories ]
		ifFalse: [ 
			testsSelected
				select: [ :each | testsForCategories includes: each ] ].
	self changed: #tests; changed: #testSelected; changed: #hasRunnable.