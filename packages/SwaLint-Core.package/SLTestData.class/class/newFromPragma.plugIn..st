instance creation
newFromPragma: aPragma plugIn: aSLPlugInClass

	^ self newFromDefault
		self symbol: aPragma selector;
		method: aPragma selector;
		plugIn: aSLPlugInClass;
		addDataFromPragma: aPragma.