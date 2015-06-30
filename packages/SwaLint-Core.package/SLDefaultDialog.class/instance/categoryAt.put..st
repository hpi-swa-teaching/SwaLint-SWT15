accessing-categories
categoryAt: anInteger put: aBoolean
	| target |
	target := self categoryList at: anInteger ifAbsent: [^ self].

	categoriesSelected := aBoolean
		ifTrue: [ categoriesSelected copyWith: target ]
		ifFalse: [ categoriesSelected copyWithout: target ].
	self changed: #categorySelected; updateClasses.