menu
selectClassesByFilter

	| pattern matches |
	pattern := UIManager default request: 'Pattern to select classes' initialAnswer: '*'.
	
	classesModel list withIndexDo: [ :each :index | 
		matches := pattern match: each.
		classesModel listSelectionAt: index put: matches ].