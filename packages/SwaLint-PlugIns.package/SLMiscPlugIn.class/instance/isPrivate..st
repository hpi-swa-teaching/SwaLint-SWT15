method tests
isPrivate: aSLMethodTestObject

	<slTestName: nil 
	description: 'Method is private'>

	aSLMethodTestObject shouldBeMethod.
	^ self booleanResult: 
		(self methodIsPrivate: aSLMethodTestObject testObject)