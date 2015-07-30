overview-pyramid
createOverviewPyramidMorph: aTool

	overviewResults := (self results detect: 
		[:each | (each testData symbol = #overviewPyramidMetric:) and:
			((each isMemberOf: SLErrorResult)
				ifFalse: [(each result notNil)]
				ifTrue: [false])]
		ifNone: SLResult new) result.

	(overviewResults = nil)
		ifFalse: [
			overviewpyramidMorph := OverviewPyramidMorph newWithResults: overviewResults.
			" refactor this "
			(((aTool submorphNamed: self overviewPyramidScrollPaneName) submorphs at: 3) submorphNamed: self resultsPanelName) addMorph: overviewpyramidMorph fullFrame: self overviewPyramidMorphFrame.
			 overviewpyramidMorph hide.
			self isOrderedByTests
				ifTrue: [ self hideOverviewPyramid ]
				ifFalse: [ self showOverviewPyramid ]]
		ifTrue: [ self hideOverviewPyramid ]