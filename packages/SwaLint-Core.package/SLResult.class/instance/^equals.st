comparing
= aValue
	"To objects are equal if their stored objects are equal"

	^ (aValue isKindOf: self class)
		ifTrue: [self = aValue hash]
		ifFalse: [self hash = aValue]