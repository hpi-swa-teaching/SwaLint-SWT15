tests
testSLTestDataFromNameDescPragma

	| td |

	td := SLTestData newFromPlugIn: SLPlugInDummy.
	td addDataFromPragma:  SLTestDataPragmaProvider provideSLTestNameDescriptionPragma.
	self
		assert: td plugIn == SLPlugInDummy;
		assert: td name == 'Name';
		assert: td category == SLPlugInDummy defaultCategory;
		assert: td isHidden == false;
		assert: td longRuntime == false.