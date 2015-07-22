test selections
testObjectsSelectedForTestRun
	
	^ self classesModel selectedItems collect: [ :element | 
		(Smalltalk at: element) as: SLTestObject]