method tests
isAccessor: aSLMethodTestObject
	<SLTestName: nil 
	Description: 'Method ist getter or setter'>

	^ self booleanResult:
		((aSLMethodTestObject resultOf: #isGetter:) isPositive or: 
		[ (aSLMethodTestObject resultOf: #isSetter:) isPositive ])