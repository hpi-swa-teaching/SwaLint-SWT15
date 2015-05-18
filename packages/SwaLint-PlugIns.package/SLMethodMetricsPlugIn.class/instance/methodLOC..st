tests
methodLOC: aSLMethodTestObject
	" as of [OOMP]:
	'The number of lines of code of an operation, including blank lines and comments [LK94]' "
<name: 'CountLines2'
	description: 'counts lines2'>
	^ (self 
		integerResult: aSLMethodTestObject sourceCode lineCount
		withThresholdFor: #MethodLOC)
			colorLowIsGood