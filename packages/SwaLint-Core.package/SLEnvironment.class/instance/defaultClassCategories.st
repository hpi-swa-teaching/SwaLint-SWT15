initialize-release
defaultClassCategories
	"Initialize class and classCategory models"
	
	classCategoriesModel := (SLMultipleSelectionModel 
		withModel: self withMessage: #selectableClassCategories)
			menuGetter: #classCategoryMenuFor:in:.
	
	classesModel := (SLMultipleSelectionModel 
		withModel: self withMessage: #selectableClasses)
			menuGetter: #classMenuFor:in:.
	
	classCategoriesModel addDependent: classesModel.
	classCategoriesModel addDependent: self.
	classesModel addDependent: self.