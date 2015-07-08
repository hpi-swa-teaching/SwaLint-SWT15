updating
updateResults

	results := self findResultsForClasses: classesSelected AndTests: testsSelected.
	resultsSelected := resultsSelected isNil
		ifTrue: [ Set new ]
		ifFalse: [
			resultsSelected
				select: [ :each | self resultList includes: each ]].
	self changed: #resultList; changed: #results; changed: #resultSelected.

	"overviewResults := (self results detect: [:each | (each testData symbol = #overviewPyramidMetric:) and: (each result notNil)] ifNone: SLResult new) result.
	overviewResults := self results.
	Transcript show: overviewResults asString."