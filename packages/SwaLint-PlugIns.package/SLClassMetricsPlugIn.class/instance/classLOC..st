tests
classLOC: aSLClassTestObject
<name: 'CountLines3'
	description: 'counts lines3'>
	^ self integerResult: 
			(self sumUpMethodsOf: aSLClassTestObject for: #methodLOC)
		withThresholdFor: #ClassLOC