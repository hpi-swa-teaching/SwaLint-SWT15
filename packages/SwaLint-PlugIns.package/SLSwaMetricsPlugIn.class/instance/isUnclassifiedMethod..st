private
isUnclassifiedMethod: aSLMethodTestObject
	<SLTestHidden: true 
	LongRuntime: nil>

	aSLMethodTestObject shouldBeMethod.
	^ self booleanResult: (aSLMethodTestObject 
		testObject methodClass organization 
			categoryOfElement: aSLMethodTestObject methodSelector) = 
				Categorizer default