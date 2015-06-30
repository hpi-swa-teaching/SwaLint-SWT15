accessing-classes
classes
	
	classes ifNil: [self environment ifNotNil: [classes := self environment classes list]].
	^ classes