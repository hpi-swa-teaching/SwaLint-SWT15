tests
methodcount: aSLSystemTestObject

	<SLTestName: 'MethodCount' 
	Description: 'Counts methods of a given class'>

	aSLSystemTestObject shouldBeSystem.
	^ self integerResult: aSLSystemTestObject allMethods size