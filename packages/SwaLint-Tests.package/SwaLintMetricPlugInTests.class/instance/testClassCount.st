<<<<<<< HEAD:packages/SwaLint-Tests.package/SwaLintMetricPlugInTests.class/instance/test01testClasscountTest.st
testing
test01testClasscountTest
=======
as yet unclassified
testClassCount
>>>>>>> SWT15/dev:packages/SwaLint-Tests.package/SwaLintMetricPlugInTests.class/instance/testClassCount.st
	
	self resetTestSystem.
	
	testSystem
				addClass: (SLClassTestObject newFrom: (SLDummyClass01));
				addClass: (SLClassTestObject newFrom: (SLDummyClass02));
				addClass: (SLClassTestObject newFrom: (SLDummyClass04)).
				

	self assert: (testSystem resultOf: #classcount:) equals: 3