building
buildResultsWith: aBuilder

	^ aBuilder pluggableMultiSelectionListSpec new
		model: self;
		name: 'Results List';
		list: #resultList;
		menu: #resultMenu:;
		getIndex: #resultSelected;
		setIndex: #resultSelected:;
		getSelectionList: #resultAt:;
		setSelectionList: #resultAt:put:;
		yourself