tests
overviewPyramidMetric: aSLSystemTestObject

	<slTestName: 'Overview Pyramid Metric'
	description: 'Summarizes Metrics (CYCLO, NOM, LOC, NOC, NOP, Number of derived classes, Height of Inheritance Tree, CALLS, FANOUT) necessary for showing the Overview Pyramid.' >
	<slTestHidden: false
	longRuntime: true>

	aSLSystemTestObject shouldBeSystem.

	^ self collectionResult: (Dictionary newFrom:
		{#ahh->(aSLSystemTestObject resultOf: #averageHierarchyHight:) result.
		#andc->(aSLSystemTestObject resultOf: #averageNumberOfDerivedClasses:) result.
		#calls->(self systemCALLS: aSLSystemTestObject).
		#cyclo->(self systemCYCLO: aSLSystemTestObject).
		#fanout->(self systemFANOUT: aSLSystemTestObject).
		#loc->(aSLSystemTestObject resultOf: #systemLocCount:) result.
		#noc->(aSLSystemTestObject resultOf: #classCount:) result.
		#nom->(aSLSystemTestObject resultOf: #systemMethodCount:) result.
		#nop->aSLSystemTestObject categories size.})