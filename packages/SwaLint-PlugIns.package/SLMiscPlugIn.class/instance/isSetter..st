method tests
isSetter: aSLMethodTestObject
	<SLTestName: nil 
	Description: 'Method only sets a variable'>

	aSLMethodTestObject shouldBeMethod.
	^ self booleanResult: 
		(self methodIsSetter: aSLMethodTestObject)