accessing-classes
classList
	Transcript show: 'toDo - sorting';cr.
	self classes isEmpty ifTrue: [ ^ self classes].
	^ self classes