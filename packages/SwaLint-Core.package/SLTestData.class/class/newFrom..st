instance creation
newFrom: anObject

	anObject ifNil: [^ nil].
	(self isTestDataObject: anObject) ifTrue: [^ anObject copy].
	^ self error: 'Can not create SLTestData from ', anObject asString