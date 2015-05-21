method tests
calledOperations: aSLMethodTestObject

	<SLTestName: nil
	Description: ''>

	| messages |
	aSLMethodTestObject shouldBeMethod.
	messages := aSLMethodTestObject testObject messages.
	^ self collectionResult: messages select: [ :each |
			aSLMethodTestObject testObject literals includes: each]