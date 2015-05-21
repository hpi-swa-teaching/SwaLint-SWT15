method tests
usedInstVars: aSLMethodTestObject
	<SLTestName: nil 
	Description: 'Collection of all inst vars used by a method'>

	aSLMethodTestObject shouldBeMethod.
	^ SLCollectionResult newWithValue:
		(self collectInstVarsOf: aSLMethodTestObject)