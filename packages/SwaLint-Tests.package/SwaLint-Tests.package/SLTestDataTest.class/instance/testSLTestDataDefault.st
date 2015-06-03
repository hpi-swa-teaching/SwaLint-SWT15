tests
testSLTestDataDefault

	| td |
	
	td := SLTestData newFromDefault.
	self
		assert: td plugIn isNil;
		assert: td symbol isNil;
		assert: td name isNil;
		assert: td description isNil;
		assert: td category isNil;
		assert: td method isNil;
		assert: td isHidden == false;
		assert: td longRuntime == false.