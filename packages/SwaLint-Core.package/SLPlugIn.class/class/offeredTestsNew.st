tests
offeredTestsNew 

	| allTestData allPragmas |
	allTestData := Dictionary new.
	allPragmas := OrderedCollection new.
	allPragmas addAll: (Pragma allNamed: #slTestName:description: in: self).
	allPragmas addAll: (Pragma allNamed: #slTestHidden:longRuntime: in: self).
	allPragmas do: [ :aPragma |
		allTestData at: aPragma selector asString ifAbsent: [ allTestData at: aPragma selector asString put: (SLTestData newFromPlugIn: self) ].
		allTestData at: aPragma selector asString ifPresent: [ :aTestData |
			aPragma keyword == #slTestName:description: ifTrue: [ 
				aTestData setSelector: aPragma selector 
					name: aPragma arguments first 
					description: aPragma arguments second 
					hidden: nil 
					longRuntime: nil].
			aPragma keyword == #slTestHidden:longRuntime: ifTrue: [ 
				aTestData setSelector: aPragma selector 
					name: nil 
					description: nil 
					hidden: aPragma arguments first 
					longRuntime: aPragma arguments second ].
		].
	].
	^ allTestData values
