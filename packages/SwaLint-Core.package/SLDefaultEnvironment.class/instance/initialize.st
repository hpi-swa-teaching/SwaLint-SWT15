initialize-release
initialize

	super initialize.
	self
		initializeInstanceVariables;
		addPlugIn: SLPlugIn;
		fetchSystemClasses;
		defaultClassCategories;
		defaultClasses;
		defaultTestCategories;
		defaultTests.