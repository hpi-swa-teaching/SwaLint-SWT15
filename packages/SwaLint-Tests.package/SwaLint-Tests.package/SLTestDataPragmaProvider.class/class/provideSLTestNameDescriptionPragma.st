as yet unclassified
provideSLTestNameDescriptionPragma

	<slTestName: 'Name'
	description: nil>

	Pragma withPragmasIn: self do: [:aPragma |
		(aPragma selector == #method1) ifTrue: [
			^aPragma
		].
	].
	^nil