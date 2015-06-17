method tests
calledClasses: aSLMethodTestObject

	<slTestName: nil
	description: nil>

	| classNames |
	aSLMethodTestObject shouldBeMethod.
	classNames := Set new.
	(aSLMethodTestObject testObject) messages do: 
		[:selector | classNames addAll: ((SystemNavigation allCallsOn: selector) collect: [:methodReference | methodReference className]) ].
	^self collectionResult: classNames