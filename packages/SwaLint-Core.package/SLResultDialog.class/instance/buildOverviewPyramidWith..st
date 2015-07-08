building
buildOverviewPyramidWith: aBuilder
	
	| overviewPyramid |
	
	overviewPyramid := RectangleMorph new.
	^ aBuilder pluggablePanelSpec new
		model: self;
		name: 'Overview Pyramid';
		children: (OrderedCollection new
			add: RectangleMorph new;
			yourself)
		yourself