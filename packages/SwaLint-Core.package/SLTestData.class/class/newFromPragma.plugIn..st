instance creation
newFromPragma: aPragma plugIn: aSLPlugInClass

	^self newFromDefault
		symbol: aPragma selector;
		method: aPragma selector;
		category: aSLPlugInClass defaultCategory;
		plugIn: aSLPlugInClass;
		addDataFromPragma: aPragma.