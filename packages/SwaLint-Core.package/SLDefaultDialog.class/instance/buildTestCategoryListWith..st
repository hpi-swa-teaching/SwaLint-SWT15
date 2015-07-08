building
buildTestCategoryListWith: aBuilder

	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		name: 'Test Category List';
		list: #testCategories; 
		menu: #testCategoryMenu:;
		getIndex: #testCategorySelected; 
		setIndex: #testCategorySelected:;
		getSelectionList: #testCategoryAt:;
		setSelectionList: #testCategoryAt:put:;
		yourself