accessing
addDataFromNameDescPragma: aPragma

	^self 
		symbol: aPragma selector;
		method: aPragma selector;
		name: (aPragma arguments first ifNil: [self symbol asString]);
		description: (aPragma arguments second ifNil: ['no description'])