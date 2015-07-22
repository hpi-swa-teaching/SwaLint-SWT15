menu
selectPackage: aPackage 

	classCategoriesModel listItems do: [ :category | 
		(aPackage includesSystemCategory: category) 
			ifTrue: [ self selectCategory: category ]].