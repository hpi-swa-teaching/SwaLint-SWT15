accessing
selectableTests

	^ self testCategoriesModel selectedItems 
		inject: OrderedCollection new 
		into: [ :selectableTests :each |
			selectableTests 
				addAll: (self testsFromCategory: each);
				yourself]