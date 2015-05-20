tests
offeredTestsNew 

	| allTestData methode |
	allTestData := Dictionary new.
	Pragma withPragmasIn: self do: [:aPragma |
		methode := aPragma selector.
		Transcript show: aPragma selector asString.
		allTestData at: aPragma selector asString 
			ifPresent: [:testData | testData addDataFromPragma: aPragma ] 
			ifAbsent: [ allTestData at: aPragma selector put: (SLTestData newFromPragma: aPragma plugIn: self) ]
	].
	^ allTestData values
