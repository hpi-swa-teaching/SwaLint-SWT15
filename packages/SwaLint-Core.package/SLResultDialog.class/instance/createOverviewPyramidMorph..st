overview-pyramid
createOverviewPyramidMorph: aTool

	overviewResults := (self results detect: [:each |  (each testData symbol = #overviewPyramidMetric:) and: ((each isMemberOf: SLErrorResult) ifFalse: [(each result notNil)] ifTrue: [false]) ] ifNone: SLResult new) result.

<<<<<<< HEAD
	overviewResults := (self results detect: [:each | (each testData symbol = #overviewPyramidMetric:) and: ((each isKindOf: SLErrorResult) ifTrue: [false] ifFalse: [each result notNil])] ifNone: SLResult new) result.
	"overviewResults := self results."
	"Transcript show: overviewResults asString."
=======
	(overviewResults = nil)
		ifFalse: [ "now: create morphs"
			overviewpyramidMorph := OverviewPyramidMorph newWithResults: overviewResults.
			(((aTool submorphNamed: self overviewPyramidScrollPaneName) submorphs at: 3) submorphNamed: self resultsPanelName) addMorph: overviewpyramidMorph fullFrame: self overviewPyramidMorphFrame.
>>>>>>> SWT15/dev

			overviewpyramidMorph hide.
			self isOrderedByTests
				ifTrue: [ self hideOverviewPyramid ]
				ifFalse: [ self showOverviewPyramid ].]
		ifTrue: [ self hideOverviewPyramid ]
	 