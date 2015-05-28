tests
heightOfInheritanceTree: aSLClassTestObject
	"Answer the length of the path from the class to its deepest subclass."

	<slTestName: 'Height of Inheritance Tree [HIT]'
	description: 'Answer the length of the path from a class to its deepest subclass.' >

	^ self integerResult:
		(self computeHITRecursively: aSLClassTestObject testObject)