method tests
calledClasses: aSLMethodTestObject

	<slTestName: nil
	description: nil>

	| classNames |
	aSLMethodTestObject shouldBeMethod.
	classNames := Set new.
	(aSLMethodTestObject testObject ) messages do: 
		[:selector |
		classNames addAll: 
			((aSLMethodTestObject testObject methodClass allCallsOn: selector) collect: 
				[:methodReference | methodReference className])].
	^self collectionResult: classNames