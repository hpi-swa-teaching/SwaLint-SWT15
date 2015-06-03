as yet unclassified
provideFullPragmas

	| collection |
	collection := OrderedCollection new.
	Pragma withPragmasIn: self do: [:aPragma |
		(aPragma selector == #method2) ifTrue: [
			collection addLast: aPragma.
		].
	].
	^collection.