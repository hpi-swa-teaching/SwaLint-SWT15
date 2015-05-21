method tests
isGetter: aSLMethodTestObject
	<SLTestName: nil 
	Description: 'Method only returns a variable'>

	aSLMethodTestObject shouldBeMethod.
	^ self booleanResult: 
		(self methodIsGetter: aSLMethodTestObject testObject)