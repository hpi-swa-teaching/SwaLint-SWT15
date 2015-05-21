tests
methodCC: aSLMethodTestObject

	<SLTestName: 'Changing Classes [CC]'
	Description: nil>

	| callers callingClasses |

	callers := aSLMethodTestObject resultOf: #methodCallers:.
	callingClasses := (callers itemsCollect: [ :each | each parent ]) asSet.
	^ self fewManyResult: callingClasses size