tests
noClassComments: aSLClassTestObject
	<SLTestName: 'Missing class comments'
	Description: nil>

	| class |
	aSLClassTestObject shouldBeClass.
	class := aSLClassTestObject testObject.
	^ self failureResult: (class comment = 
			class instanceSide organization classComment)
