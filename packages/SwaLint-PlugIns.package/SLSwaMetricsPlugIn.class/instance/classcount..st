tests
classcount: aSLSystemTestObject
	<SLTestName: nil
	Description: 'Overall number of classes'>

	aSLSystemTestObject shouldBeSystem.
	^ self integerResult: aSLSystemTestObject allClasses size