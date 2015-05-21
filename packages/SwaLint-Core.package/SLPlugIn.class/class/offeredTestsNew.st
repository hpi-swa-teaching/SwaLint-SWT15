tests
offeredTestsNew 

	| allTestData |
	allTestData := Dictionary new.
	Pragma withPragmasIn: self do: [:aPragma |
		((aPragma key == #SLTestName:Description:) | (aPragma key == #SLTestHidden:LongRuntime:)) ifTrue: [
		allTestData at: (aPragma selector asString)
			ifPresent: [ :testData | 
				testData addDataFromPragma: aPragma
			] 
			ifAbsent: [ 
				allTestData at: (aPragma selector asString) put: (SLTestData newFromPragma: aPragma plugIn: self)
			]
		]
	].
	"Transcript crtab; show: allTestData."
	^ allTestData values
