accessing
orderButtonString

	self isOrderedByTests 
		ifTrue: [^ self orderByClassesString]
		ifFalse: [^ self orderByTestsString]