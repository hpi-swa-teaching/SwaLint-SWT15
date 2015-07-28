private
methodHasNoSender: aSLMethodTestObject

	<slTestHidden: true
	longRuntime: nil>

	aSLMethodTestObject shouldBeMethod.
	^ self booleanResult: (aSLMethodTestObject parent testObject allUnsentMessages includes: (aSLMethodTestObject methodSelector))