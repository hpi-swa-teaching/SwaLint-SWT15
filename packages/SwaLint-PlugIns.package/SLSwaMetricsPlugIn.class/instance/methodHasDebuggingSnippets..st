private
methodHasDebuggingSnippets: aSLMethodTestObject

	<slTestHidden: true
	longRuntime: nil>

	aSLMethodTestObject shouldBeMethod.
	^ self booleanResult: ((aSLMethodTestObject testObject literals
		includesSubstringAnywhere: 'Transcript') or: (aSLMethodTestObject testObject literals includesAnyOf: #(halt break)))