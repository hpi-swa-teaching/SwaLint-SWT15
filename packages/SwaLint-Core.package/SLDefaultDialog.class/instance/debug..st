actions
debug: aTestCase
	Transcript show: 'might be obsolete: SLDefaultDialog debug'.
	self debugSuite: (TestSuite new
		addTest: aTestCase; 
		yourself).