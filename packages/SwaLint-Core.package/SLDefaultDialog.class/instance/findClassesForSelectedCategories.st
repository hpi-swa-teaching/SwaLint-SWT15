updating
findClassesForSelectedCategories
	| items |
	categoriesSelected isEmpty 
		ifTrue: [ ^ Set new ].
	items := categoriesSelected gather: [ :category |
		((Smalltalk organization listAtCategoryNamed: category)
			collect: [ :each | Smalltalk at: each ])].
	^ items asSet