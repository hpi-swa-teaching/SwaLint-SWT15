test selections
testsSelectedForTestRun

	^ self testsModel selectedItems 
		inject: OrderedCollection new
		into: [ :collection :element |
			collection add: element;
				yourself]