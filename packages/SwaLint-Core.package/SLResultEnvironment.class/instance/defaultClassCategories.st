initialize-release
defaultClassCategories
	"Initialize class and classCategory models"
	
	super defaultClassCategories.
	classCategoriesModel asStringSelector: #name.
	classesModel asStringSelector: #name.