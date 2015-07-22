accessing
selectableTests

	^ testCategoriesModel selectedItems 
		inject: OrderedCollection new 
		into: [ :list :each |
			list addAll: (self testsAtCategory: each); 
				yourself]