updating
findClassesForCategories: aCollection
	| items chosenClasses |
	aCollection isEmpty 
		ifTrue: [ ^ Set new ].
	items := aCollection gather: [ :category |
		((Smalltalk organization listAtCategoryNamed: category)
			collect: [ :each | Smalltalk at: each ])].
	self environment ifNil: [chosenClasses := Set new] 
		ifNotNil: [chosenClasses := self environment classes list].
	items := items select: [:each | chosenClasses includes: each name].
	^ items asSet