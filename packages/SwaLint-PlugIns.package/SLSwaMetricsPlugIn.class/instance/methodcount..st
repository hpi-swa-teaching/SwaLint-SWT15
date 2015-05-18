tests
methodcount: aSLSystemTestObject

	<name: 'CountMethods' description: 'counts methods'>

	aSLSystemTestObject shouldBeSystem.
	^ self integerResult: aSLSystemTestObject allMethods size