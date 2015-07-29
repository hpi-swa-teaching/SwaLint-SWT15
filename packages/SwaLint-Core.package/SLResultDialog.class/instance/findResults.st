updating
findResults

	| resultsDict allTestObjects |
	(classesSelected isNil or: 
	testsSelected isNil or:
	self environment isNil) ifTrue: [ ^ Set new ].

	allTestObjects := self fetchAllTestObjects.
	resultsDict := Dictionary new.

	self environment results do: [ :each | 
		((allTestObjects includes: (each testObject)) 
		and: (testsSelected anySatisfy: [ :testData | testData symbol = each testData symbol])) 
			ifTrue: [self addEntry: each to: resultsDict]].

	^ self buildListFrom: resultsDict