accessing-classes
classList
	| offset |
	Transcript show: 'toDo - indentation';cr.
	classes isEmpty ifTrue: [ ^ classes ].
	offset := classes first allSuperclasses size.
	^ classes collect: [ :each | | ident |
		ident := String 
			new: 2 * (0 max: each allSuperclasses size - offset) 
			withAll: $ .
		ident , each name].