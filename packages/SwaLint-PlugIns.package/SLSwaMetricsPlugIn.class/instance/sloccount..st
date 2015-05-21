tests
sloccount: aSLSystemTestObject

	<SLTestName: nil
	Description: 'Overall lines of code'>
	<SLTestHidden: nil 
	LongRuntime: nil>

	aSLSystemTestObject shouldBeSystem.
	^ self integerResult:
		(aSLSystemTestObject methods
			inject: 0
			into: [ :total :each | total + (each resultOf: #methodLOC:)])
