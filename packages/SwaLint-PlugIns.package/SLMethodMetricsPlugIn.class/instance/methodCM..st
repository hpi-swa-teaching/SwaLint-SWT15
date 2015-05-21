tests
methodCM: aSLMethodTestObject

	<SLTestName: 'Changing Methods [CM]'
	Description: nil>

	| callers |

	callers := aSLMethodTestObject resultOf: #methodCallers:.
	^ self integerResult: callers itemCount