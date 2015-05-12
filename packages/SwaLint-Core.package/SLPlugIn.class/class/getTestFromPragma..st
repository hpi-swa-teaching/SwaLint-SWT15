tests
getTestFromPragma: aPragma

	| aSLTest tempData |

	tempData := {aPragma arguments first . aPragma arguments second . aPragma arguments third }.
	aSLTest := SLTestData newFromData: tempData plugIn: self.
	^aSLTest