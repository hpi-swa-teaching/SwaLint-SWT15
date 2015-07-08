actions
run
	
	self runnable ifFalse: [^ self].
	
	SLResultDialog onEnvironment: 
		(SLTestRunner onEnvironment: self environment).
		
	self changed: #close.

	"self environment selectedTests: testsSelected.
	self environment selectedClasses: classesSelected.
	SLResultDialog onEnvironment: 
		(SLTestRunner onEnvironment: self environment)."