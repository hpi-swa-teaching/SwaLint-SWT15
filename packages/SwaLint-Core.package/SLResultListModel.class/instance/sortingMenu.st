menus
sortingMenu

	^ (MenuMorph new) 
		defaultTarget: self;
		add: #testsModel translated 
			selector: #listOrderBy: 
			argument: #testsModel;
		add: #classesModel translated 
			selector: #listOrderBy: 
			argument: #classesModel;
		yourself