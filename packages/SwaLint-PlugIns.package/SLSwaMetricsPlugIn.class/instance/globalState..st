tests
globalState: aSLClassTestObject
	<SLTestName: 'Occurances of global state on the class side'
	Description: nil>

	aSLClassTestObject shouldBeClass.
	^ self successResult: aSLClassTestObject classVariables isEmpty not