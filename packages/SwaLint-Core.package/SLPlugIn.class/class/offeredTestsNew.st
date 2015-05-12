tests
offeredTestsNew 

	| aSlTestCollection |

	aSlTestCollection := OrderedCollection new.
	(Pragma allNamed: #name:description: in: self) do: [:aPragma |
		aSlTestCollection add: (SLTestData newFromData: {aPragma selector asSymbol  . aPragma arguments first . aPragma arguments second} plugIn: self ).
		Transcript show: aPragma method asString  ].
	^aSlTestCollection
