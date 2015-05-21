tests
numberOfAccessedVars: aSLMethodTestObject

	<SLTestName: 'Number of accessed variables [NOAV]'
	Description: 'Number of accessed variables inside a method'>

	^ self fewManyResult:
		(aSLMethodTestObject resultOf: #usedVars:) itemCount