tests
testSLTestDataFromFullPragma

	| td ps |
	ps := SLTestDataPragmaProvider provideFullPragmas.
	td := SLTestData newFromPlugIn: SLPlugInDummy.
	ps do: [ :aPragma |
		td addDataFromPragma: aPragma.
	].
	self
		assert: td plugIn == SLPlugInDummy;
		assert: td name == 'Name';
		assert: td category == SLPlugInDummy defaultCategory;
		assert: td isHidden == true;
		assert: td longRuntime == true.