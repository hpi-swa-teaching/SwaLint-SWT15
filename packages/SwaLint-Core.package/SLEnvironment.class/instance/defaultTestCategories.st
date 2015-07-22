initialize-release
defaultTestCategories
	
	testCategoriesModel := (SLMultipleSelectionModel 
		withModel: self withMessage: #selectableTestCategories)
		menuGetter: #testCategoryMenuFor:in:.
		
	testsModel := (SLMultipleSelectionModel 
		withModel: self withMessage: #selectableTests 
		withAsStringSelector: #format)
		menuGetter: #testsMenuFor:in:.
	
	testCategoriesModel addDependent: testsModel.
	testCategoriesModel addDependent: self.
	testsModel addDependent: self