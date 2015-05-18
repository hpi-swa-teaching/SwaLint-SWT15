tests
offeredTestsNew 

	^ (Pragma allNamed: #name:description: in: self) collect: [:aPragma |
		(SLTestData newFromData: {aPragma arguments first . nil . aPragma arguments second . nil . aPragma selector asSymbol . false} plugIn: self ).]
