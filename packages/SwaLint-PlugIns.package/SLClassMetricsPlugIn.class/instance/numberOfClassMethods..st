tests
numberOfClassMethods: aSLClassTestObject
	"Answer the number of class methods defined in the argument"
	
	<slTestName: 'Number of Class Methods [NOcM]'
	description: 'Answer the number of class methods of a class.' >

	^ self integerResult:
		aSLClassTestObject classMethods size