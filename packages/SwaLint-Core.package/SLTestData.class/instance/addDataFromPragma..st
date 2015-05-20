accessing
addDataFromPragma: aPragma

	aPragma key == #SLTestName:Description: 
		ifTrue: [
			^self 
				name: (aPragma arguments first ifNil: [self symbol asString]);
				description: (aPragma arguments second ifNil: ['no description'])].
	aPragma key == #SLTestHidden:LongRuntime: 
		ifTrue: [
			^self 
				category: (aPragma arguments first ifTrue: [^ 'hidden' ] ifFalse: [ ^self plugIn defaultCategory ]);
				longRuntime: (aPragma arguments second ifNil: [^ false ]) ].