tests
numberOfInstanceMethods: aSLClassTestObject
	"Answer the number of instance methods defined in the argument"

	<slTestName: 'Number of Instance Methods [NOiM]'
	description: 'Answer the number of instance methods of a class.' >
	
	^ self integerResult:
		aSLClassTestObject instanceMethods size