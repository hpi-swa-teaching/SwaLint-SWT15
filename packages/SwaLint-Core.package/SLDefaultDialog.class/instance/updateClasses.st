updating
updateClasses
	| classesForCategories |
	classesForCategories := self findClassesForSelectedCategories.
	classes := classesForCategories asArray.
	classIndex := 0.
	classesSelected := classesSelected isNil
		ifTrue: [ classesForCategories ]
		ifFalse: [ 
			classesSelected
				select: [ :each | classesForCategories includes: each ] ].
	self changed: #classList; changed: #classSelected.