building
buildTestListWith: aBuilder

	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		name: 'Test List';
		list: #testsList;
		menu: #testMenu:;
		getIndex: #testSelected; 
		setIndex: #testSelected:;
		getSelectionList: #testAt:;
		setSelectionList: #testAt:put:;
		yourself