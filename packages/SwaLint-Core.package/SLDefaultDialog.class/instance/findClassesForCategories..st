updating
findClassesForCategories: aCollection
	| items |
	aCollection isEmpty 
		ifTrue: [ ^ Set new ].
	items := aCollection gather: [ :category |
		((Smalltalk organization listAtCategoryNamed: category)
			collect: [ :each | Smalltalk at: each ])].
	^ items asSet