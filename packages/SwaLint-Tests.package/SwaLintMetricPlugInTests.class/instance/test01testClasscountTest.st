testing
test01testClasscountTest
	
	self resetTestSystem.
	
	testSystem
				addClass: (SLClassTestObject newFrom: (SLDummyClass01));
				addClass: (SLClassTestObject newFrom: (SLDummyClass02));
				addClass: (SLClassTestObject newFrom: (SLDummyClass04)).
				

	self assert: (testSystem resultOf: #classcount:) equals: 3