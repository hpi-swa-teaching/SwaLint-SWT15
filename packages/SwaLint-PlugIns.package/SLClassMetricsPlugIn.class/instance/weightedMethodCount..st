tests
weightedMethodCount: aSLClassTestObject
	"Per [OOMP]:
	 	definition of WMC [CK94]: the sum of the CYCLO metric [McC76] over 
		all methods of a class"

	<slTestName: 'Weighted method count [WMC]'
	description: 'Answer the weighted method count of a class based on its total CYCLO' >

	^ self numericResult: 
			(self sumUpMethodsOf: aSLClassTestObject for: #methodCYCLO:)
		withThresholdFor: #WMC