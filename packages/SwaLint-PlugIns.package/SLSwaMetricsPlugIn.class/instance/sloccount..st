tests
sloccount: aSLSystemTestObject

	<name: 'CountLines' description: 'counts lines'>

	aSLSystemTestObject shouldBeSystem.
	^ self integerResult:
		(aSLSystemTestObject methods
			inject: 0
			into: [ :total :each | total + (each resultOf: #methodLOC)])
