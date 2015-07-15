initialize-release
initialize

	super initialize.
	self initializeSwaLint.
	self
		defaultClassCategories;
		defaultTestCategories;
		fetchSystemClasses;		
		reload.