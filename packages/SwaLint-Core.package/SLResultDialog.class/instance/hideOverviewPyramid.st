building
hideOverviewPyramid

	| overviewPyramidPanel resultListPanel |
	overviewPyramidPanel := self resultPanel children at: 2.
	resultListPanel := self resultPanel children at: 1.

	resultListPanel frame
		leftFraction: 0 offset: 0;
		topFraction: 0 offset: 0;
		rightFraction: 1 offset: 0;
		bottomFraction: 1 offset: 0.
	overviewpyramidMorph ifNotNil: [
		overviewpyramidMorph
			hide;
			submorphsDo: [ :each | each hide ].]