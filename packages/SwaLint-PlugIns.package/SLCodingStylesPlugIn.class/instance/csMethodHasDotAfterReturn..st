tests
csMethodHasDotAfterReturn: aSLMethodTestObject

	<slTestName: nil
	description: '(private) Test a single method for dotAfterReturn'>

	| result |
	aSLMethodTestObject shouldBeMethod.
	result := self hasDotAfterReturn: aSLMethodTestObject cleanSource.
	(result notNil and: [self class NoDotAfterMethodEnd])
		ifTrue: [result := result not].
	^ self booleanResult: result