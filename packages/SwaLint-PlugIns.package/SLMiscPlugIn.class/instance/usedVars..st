method tests
usedVars: aSLMethodTestObject
	<SLTestName:  nil
	Description: 'Collection of all vars used by a method'>

	aSLMethodTestObject shouldBeMethod.
	^ SLCollectionResult newWithValue:
		(self collectAllVarsOf: aSLMethodTestObject)