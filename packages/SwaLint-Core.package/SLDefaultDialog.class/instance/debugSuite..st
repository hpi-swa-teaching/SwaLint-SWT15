actions
debugSuite: aTestSuite
	Transcript show: 'might be obsolete: SLDefaultDialog debugSuite:'.
	self basicRunSuite: aTestSuite do: [ :each | each debug ].