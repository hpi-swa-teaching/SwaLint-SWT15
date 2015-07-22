tests
methodsWithoutSenders: aSLClassTestObject

	<slTestName: 'Methods without senders' 
	description: 'This test detects methods without senders for a given class.'>

	aSLClassTestObject shouldBeClass.
	^self collectionResult: (aSLClassTestObject testObject allUnsentMessages)