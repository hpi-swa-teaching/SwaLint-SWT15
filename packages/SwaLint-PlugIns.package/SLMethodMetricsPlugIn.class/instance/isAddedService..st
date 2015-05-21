tests
isAddedService: aSLMethodTestObject

	<SLTestName: 'Method is an added Service'
	Description: 'Answers whether method extends its class interface comapred to its superclass'>
	^ self booleanResult: (
		aSLMethodTestObject parent testObject superclass allSelectors includes:
			aSLMethodTestObject methodSelector) not