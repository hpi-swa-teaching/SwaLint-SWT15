accessing
printOn: aStream

	aStream
		nextPutAll: (self method ifNil: ['(no method)'])