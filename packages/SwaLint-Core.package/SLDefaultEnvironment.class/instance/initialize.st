initialize-release
initialize

	super initialize.
	self
		fetchSystemClasses;
		defaultClassCategories;
		defaultClasses;
		defaultTestCategories;
		defaultTests.