updating
findClassesForSelectedCategories
	| items chosenClasses |

	categoriesSelected isEmpty 
		ifTrue: [ ^ Set new ].
	items := categoriesSelected gather: [ :category |
		((Smalltalk organization listAtCategoryNamed: (category name))
			collect: [ :each | Smalltalk at: each ])].
	self environment ifNil: [chosenClasses := Set new] 
		ifNotNil: [chosenClasses := self environment classes].
	items := items select: [:each | chosenClasses includes: each name].
	^ chosenClasses