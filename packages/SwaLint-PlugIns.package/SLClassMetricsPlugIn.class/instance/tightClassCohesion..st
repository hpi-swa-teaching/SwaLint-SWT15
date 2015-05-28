tests
tightClassCohesion: aSLClassTestObject
	"TCC is the relative number of method pairs of a class that 
	access at least one common attribute of that class"

	<slTestName: 'Tight Class Cohesion [TCC]'
	description: 'Number of methodpairs that access similar instance variables.' >

	^ self percentageResult:
		(self cohesion: aSLClassTestObject instanceMethods)