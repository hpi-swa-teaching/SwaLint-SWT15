accessing
addDataFromHiddenLongRuntimePragma: aPragma

	^self 
		symbol: aPragma selector;
		method: aPragma selector;
		category: (aPragma arguments first ifTrue: [ SwaLint hiddenCategory ] ifFalse: [ self plugIn defaultCategory ]);
		longRuntime: (aPragma arguments second ifNil: [^ false ]).