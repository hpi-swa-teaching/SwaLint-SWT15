menu
selectPackage: aPackage 

	classCategories do: [ :category | 
		(aPackage includesSystemCategory: category) 
			ifTrue: [ self selectCategory: category ]].