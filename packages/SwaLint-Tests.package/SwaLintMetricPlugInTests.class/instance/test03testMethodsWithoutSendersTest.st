as yet unclassified
test03testMethodsWithoutSendersTest

	| dummyClass |
	
	self resetTestSystem.
	
	dummyClass := SLClassTestObject newFrom: SLDummyClass05.
	testSystem addClass: dummyClass.
	((dummyClass resultOf: #methodsWithoutSenders:) do: [ :index | self assert: (index asString) equals: 'methodNeverCalled']).
	self assert: ((dummyClass resultOf: #methodsWithoutSenders:) itemCount) equals: 1