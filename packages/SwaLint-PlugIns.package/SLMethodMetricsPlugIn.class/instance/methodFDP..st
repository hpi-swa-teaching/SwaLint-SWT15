tests
methodFDP: aSLMethodTestObject

	<SLTestName: 'Foreign Data Providers [FDP]'
	Description: nil>
	
	| allVars |
	
	allVars := (aSLMethodTestObject resultOf: #usedVars:) items.
	^ self fewManyResult: ((allVars collect: [ :v | v parent ]) asSet size)