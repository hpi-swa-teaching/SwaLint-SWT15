accessing
selectableClasses
	"Answer the elements which are selectable by the user"
	
	^ self classCategoriesModel selectedItems
		inject: SortedCollection new
		into: [ :selectableClasses :category | 
			selectableClasses 
				addAll: (self systemClasses at: category);
				yourself]