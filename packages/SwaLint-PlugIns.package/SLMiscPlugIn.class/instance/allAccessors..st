class tests
allAccessors: aSLClassTestObject

	<SLTestName: nil 
	Description: 'Collection of all accessors of a class'>

	aSLClassTestObject shouldBeClass.
	^ SLCollectionResult 
		newWith: aSLClassTestObject instanceMethods
		select: [ :method | (method resultOf: #isAccessor:) isPositive]