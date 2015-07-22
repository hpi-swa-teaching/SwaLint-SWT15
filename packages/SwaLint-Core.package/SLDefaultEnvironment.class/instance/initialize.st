initialize-release
initialize

	super initialize.
	self
		initializeInstanceVariables;
		defaultClassCategories;
		defaultTestCategories;
		fetchSystemClasses;		
		reload.