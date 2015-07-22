updating
updateResults

	results := self findResults.
	resultsSelected := resultsSelected isNil
		ifTrue: [ IdentitySet new ]
		ifFalse: [resultsSelected select: [ :each | self results includes: each ]].
	self changed: #resultList; changed: #results; changed: #resultSelected.
