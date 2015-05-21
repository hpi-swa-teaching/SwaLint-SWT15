tests
methodLAA: aSLMethodTestObject

	<SLTestName: 'Locality of Attribute Accesses [LAA]'
	Description: nil>
	
	| instVars allVars |
	
	instVars := (aSLMethodTestObject resultOf: #usedInstVars:) itemCount.
	allVars := (aSLMethodTestObject resultOf: #usedVars:) itemCount.
	^ (self percentageResult: ((allVars > 0) 	ifTrue: [ instVars / allVars ]
											ifFalse: [ 1 ])) showRule: [ :r | (r = 1) not ]