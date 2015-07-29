tests
debuggingSnippets: aSLClassTestObject

	<slTestName: 'Debugging Snippets'
	description: 'Find code snippets from debugging'>

	aSLClassTestObject shouldBeClass.
	^ self
		summarizeNumberOf: aSLClassTestObject methods
		withResultOf: #methodHasDebuggingSnippets:
		satisfying: [:result | result isPositive]
