tests
methodsWithoutSenders: aSLClassTestObject

	<slTestName: 'Methods without senders' 
	description: 'This test detects methods without senders for a given class.'>

	| unsentMethods |
	aSLClassTestObject shouldBeClass.
	unsentMethods := aSLClassTestObject testObject allUnsentMessages.
	^ self
		summarizeNumberOf: (aSLClassTestObject methods select: [ :each | unsentMethods includes: (each methodSelector)])
		withResultOf: #methodHasNoSender: 
		satisfying: [:result | result isPositive]