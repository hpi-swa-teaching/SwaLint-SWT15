<<<<<<< HEAD:packages/SwaLint-Tests.package/SwaLintMetricPlugInTests.class/instance/test02testMethodCountTest.st
testing
test02testMethodCountTest
=======
as yet unclassified
testMethodCount
>>>>>>> SWT15/dev:packages/SwaLint-Tests.package/SwaLintMetricPlugInTests.class/instance/testMethodCount.st

	self resetTestSystem.
	
	testSystem
				addClass: (SLClassTestObject newFrom: (SLDummyClass01));
				addClass: (SLClassTestObject newFrom: (SLDummyClass02));
				addClass: (SLClassTestObject newFrom: (SLDummyClass03)).

	self assert: (testSystem resultOf: #methodcount:) equals: 5.
