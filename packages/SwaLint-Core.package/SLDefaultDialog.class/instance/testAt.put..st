accessing-test
testAt: anInteger put: aBoolean

	| target |
	target := tests at: anInteger ifAbsent: [^ self].

	testsSelected := aBoolean 
		ifTrue: [testsSelected copyWith: target]
		ifFalse: [testsSelected copyWithout: target].
	self changed: #testSelected; changed: #hasRunnable.