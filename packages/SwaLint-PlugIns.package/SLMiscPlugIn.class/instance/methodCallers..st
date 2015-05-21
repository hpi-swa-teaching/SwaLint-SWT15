method tests
methodCallers: aSLMethodTestObject

	<SLTestName: nil
	Description: 'Collection of all callers of a method'>
	| methods |
	
	aSLMethodTestObject shouldBeMethod.
	
	methods := aSLMethodTestObject testSystem allMethods.
	^ self collectionResult: methods
			select: [ :each | each testObject messages
											includes: aSLMethodTestObject methodSelector ]