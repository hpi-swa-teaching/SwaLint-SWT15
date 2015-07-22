menu
selectClassCategoriesByFilter

	| pattern matches |
	pattern := UIManager default request: 'Pattern to select categories' initialAnswer: '*'.
	
	pattern ifNotEmpty: [
		classCategoriesModel list withIndexDo: [ :each :index | 
			matches := pattern match: each.
			classCategoriesModel listSelectionAt: index put: matches ]].