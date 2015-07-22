menu
selectCategory: aSymbol

	classCategoriesModel 
		listSelectionAt: (classCategoriesModel listItems indexOf: aSymbol) put: true.

	(systemClasses at: aSymbol) 
		do: [ :cls |
			classesModel listSelectionAt: (self classesModel listItems indexOf: cls) put: true].