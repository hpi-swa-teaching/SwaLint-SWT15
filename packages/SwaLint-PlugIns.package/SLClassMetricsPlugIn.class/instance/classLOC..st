tests
classLOC: aSLClassTestObject
	<slTestName: 'LOC of a class [LOC]'
	description: 'Sum up the lines of code of a class.' >

	^ self integerResult: 
			(self sumUpMethodsOf: aSLClassTestObject for: #methodLOC:)
		withThresholdFor: #ClassLOC