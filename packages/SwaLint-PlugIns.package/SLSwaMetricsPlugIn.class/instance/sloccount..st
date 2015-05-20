tests
sloccount: aSLSystemTestObject

	<SLTestName: 'CountLines' 
	Description: 'Counts overall lines'>
	<SLTestHidden: false 
	LongRuntime: true>

	aSLSystemTestObject shouldBeSystem.
	^ self integerResult:
		(aSLSystemTestObject methods
			inject: 0
			into: [ :total :each | total + (each resultOf: #methodLOC)])
