tests
methodsNeedAttention: aSLClassTestObject

	<slTestName: 'Methods need attention'
	description: 'Answer the number of Methods that need attention.' >

	^ self
		summarizeNumberOf: aSLClassTestObject methods
		withResultOf: #methodNeedsAttention: 
		satisfying: [ :result | result isPositive ]