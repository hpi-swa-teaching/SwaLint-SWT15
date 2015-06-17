tests
overviewPyramidMetric: aSLSystemTestObject

	<slTestName: 'Overview Pyramid Metric'
	description: 'Summarizes Metrics (CYCLO, NOM, LOC, NOC, NOP, Number of derived classes, Height of Inheritance Tree, CALLS, FANOUT) necessary for 	showing the Overview Pyramid.' >

	| collection |
	aSLSystemTestObject shouldBeSystem.
	
	collection := Dictionary new.
	collection at: #nop put: aSLSystemTestObject categories size.
	collection at: #noc put: aSLSystemTestObject allClasses size.
	"collection at: #nom put: aSLSystemTestObject allMethods size.
	collection at: #loc put: ((aSLSystemTestObject allClasses collect: [:class | (class resultOf: #classLOC:) result ]) sum ).
	collection at: #cyclo put: ((aSLSystemTestObject allClasses collect: [:class | (class methods collect: [:method | (method resultOf: #methodCYCLO:) result ]) sum ]) sum ).
	collection at: #calls put: ((aSLSystemTestObject allClasses collect: [:class | (class methods collect: [:method | (method resultOf: #methodCallers: ) itemCount ]) sum ]) sum )."
	collection at: #fanout put: 
		((aSLSystemTestObject allClasses collect: 
			[:class | class methods collect: 
				[:method | (method resultOf: #calledClasses:) result ]]) intersection: 
				(aSLSystemTestObject allClasses collect: [:class | class className])) size.
	self halt.
	collection at: #andc put: (((aSLSystemTestObject allClasses collect: [:class | class testObject subclasses size]) sum ) / (collection at: #noc)) .
	^ self collectionResult: collection