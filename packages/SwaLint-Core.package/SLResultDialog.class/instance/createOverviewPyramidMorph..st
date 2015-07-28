overview-pyramid
createOverviewPyramidMorph: aTool
	
	mainMorph := Morph new.
	mainMorph color: Color white.
	(((aTool submorphNamed: self overviewPyramidScrollPaneName) submorphs at: 3) submorphNamed: self resultsPanelName) addMorph: mainMorph fullFrame: self overviewPyramidMorphFrame.

	"overviewResults := self results select: [:each | each hasDetails and: each testData symbol = #overviewPyramidMetric:].
	overviewResults := self results.
	Transcript show: overviewResults asString."

	overviewResults := (self results detect: [:each | (each testData symbol = #overviewPyramidMetric:) and: ((each isKindOf: SLErrorResult) ifTrue: [false] ifFalse: [each result notNil])] ifNone: SLResult new) result.
	"overviewResults := self results."
	"Transcript show: overviewResults asString."

	overviewResults
		ifNil: [overviewResults := Dictionary new
			at: #ahh put: 1;
			at: #andc put: 1;
			at: #calls put: 1;
			at: #cyclo put: 1;
			at: #fanout put: 1;
			at: #loc put: 1;
			at: #noc put: 1;
			at: #nom put: 1;
			at: #nop put: 1;
			yourself].

	"now: create morphs"
	mainMorph
		addMorph: self createMorphForCYCLO;
		addMorph: self createMorphForLOC;
		addMorph: self createMorphForNOM;
		addMorph: self createMorphForNOC;
		addMorph: self createMorphForNOP;
		addMorph: self createMorphForAHH;
		addMorph: self createMorphForANDC;
		addMorph: self createMorphForNOM2;
		addMorph: self createMorphForCALLS;
		addMorph: self createMorphForFANOUT.

	mainMorph hide.
	self isOrderedByTests
		ifTrue: [ self hideOverviewPyramid ]
		ifFalse: [ self showOverviewPyramid ].
	 