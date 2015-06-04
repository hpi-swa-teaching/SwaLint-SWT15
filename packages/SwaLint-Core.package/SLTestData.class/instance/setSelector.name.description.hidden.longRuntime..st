accessing
setSelector: aSymbol
	name: aName
	description: aDescription
	hidden: aHiddenBool
	longRuntime: aRuntimeBool
	
	self
		symbol: (aSymbol ifNil: [ self symbol ]);
		method: (aSymbol ifNil: [self symbol ]);
		name: (aName ifNil: [self name ifNil: [aSymbol asString]]);
		description: (aDescription ifNil: [ self description ifNil: ['no description']]).
	aHiddenBool 
		ifNil: [ self category: (self category ifNil: [ SLTestData defaultCategoryOf: self plugIn]).] 
		ifNotNil: [ self category: (aHiddenBool 
			ifTrue: [ SwaLint hiddenCategory ] 
			ifFalse: [	SLTestData defaultCategoryOf: self plugIn ])].
	self longRuntime: ( aRuntimeBool ifNil: [ self longRuntime ] ifNotNil: [ aRuntimeBool]).
^self

