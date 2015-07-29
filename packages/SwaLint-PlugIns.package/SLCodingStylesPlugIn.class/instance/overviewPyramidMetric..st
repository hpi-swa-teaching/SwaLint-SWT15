tests
overviewPyramidMetric: aSLSystemTestObject

	<slTestName: 'Overview Pyramid Metric'
	description: 'Summarizes Metrics (CYCLO, NOM, LOC, NOC, NOP, Number of derived classes, Height of Inheritance Tree, CALLS, FANOUT) necessary for showing the Overview Pyramid.' >
	<slTestHidden: false
	longRuntime: true>

	| collection  |
	aSLSystemTestObject shouldBeSystem.
	
	collection := Dictionary new.
	collection at: #nop put: aSLSystemTestObject categories size.
	collection at: #noc put: aSLSystemTestObject allClasses size.
	collection at: #nom put: aSLSystemTestObject allMethods size.
	collection at: #loc put: ((aSLSystemTestObject allClasses collect:
		[:class | (class resultOf: #classLOC:) result ]) sum ).
	collection at: #cyclo put: (self systemCYCLO: aSLSystemTestObject).
	collection at: #calls put: (self systemCALLS: aSLSystemTestObject).
	collection at: #fanout put: (self systemFANOUT: aSLSystemTestObject).
	collection at: #andc put: (((aSLSystemTestObject allClasses collect:
		[:class | class testObject subclasses size]) sum ) / (collection at: #noc)) .
	collection at: #ahh put: ((aSLSystemTestObject rootClasses collect: 
		[:class | class resultOf: #heightOfInheritanceTree: ]) sum) / (aSLSystemTestObject rootClasses size).
	^ (self collectionResult: collection) "hideAlways; yourself"