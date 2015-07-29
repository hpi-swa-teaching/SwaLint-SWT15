tests
methodsWithoutSenders: aSLClassTestObject

	<slTestName: 'Methods without senders' 
	description: 'This test detects methods without senders for a given class.'>

	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods
		withResultOf: #methodHasNoSender: 
		satisfying: [:result | result isPositive]