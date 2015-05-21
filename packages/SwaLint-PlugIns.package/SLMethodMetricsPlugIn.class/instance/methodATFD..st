tests
methodATFD: aSLMethodTestObject

	<SLTestName: 'Access To Foreign Data [ATFD]'
	Description: nil>

	| foreignVars |
	
	foreignVars := (aSLMethodTestObject resultOf: #usedForeignVars:) itemCount.
	^ self fewManyResult: foreignVars