method tests
usedForeignVars: aSLMethodTestObject
	<SLTestName: nil
	Description: 'Collection of all foreign vars used by a method'>

	aSLMethodTestObject shouldBeMethod.
	^ SLCollectionResult newWithValue:
		((aSLMethodTestObject resultOf: #usedVars:) itemsReject: 
			[ :v | (aSLMethodTestObject resultOf: #usedInstVars:) items includes: v ])