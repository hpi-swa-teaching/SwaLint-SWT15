initialize-release
refreshAllDialogs
	
	SLDefaultDialog subclassesDo: [ :each |
		[each allInstancesDo: [ :instance | instance refresh]] ifError: ["ignore"]].