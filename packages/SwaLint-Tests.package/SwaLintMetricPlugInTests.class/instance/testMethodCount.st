as yet unclassified
testMethodCount

	self resetTestSystem.
	
	testSystem
				addClass: (SLClassTestObject newFrom: (SLDummyClass01));
				addClass: (SLClassTestObject newFrom: (SLDummyClass02));
				addClass: (SLClassTestObject newFrom: (SLDummyClass03)).

	self assert: (testSystem resultOf: #methodcount:) equals: 5.
