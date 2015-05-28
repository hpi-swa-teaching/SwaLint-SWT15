accessing
addDataFromPragma: aPragma

	(aPragma key == #slTestName:description:)
		ifTrue: [
			^self 
				name: (aPragma arguments first ifNil: [self symbol asString]);
				description: (aPragma arguments second ifNil: ['no description'])].
	(aPragma key == #slTestHidden:longRuntime:)
		ifTrue: [
			^self 
				category: (aPragma arguments first ifTrue: [^ 'hidden' ] ifFalse: [ ^self plugIn defaultCategory ]);
				longRuntime: (aPragma arguments second ifNil: [^ false ]) ].