method tests
accessedVar: aSLMethodTestObject 
	"Number of the accessed variable"
	<SLTestName: nil 
	Description: 'Name of the accessed variable, for accessors only'>

	(aSLMethodTestObject resultOf: #isAccessor:) ifNegative: [
		SLWrongTypeError signal: 'Should be accessor method'].
	^ self numericResult:
		(self firstAccessedBy: aSLMethodTestObject testObject)