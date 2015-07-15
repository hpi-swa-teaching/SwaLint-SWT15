instance creation
initialize

	| environment |
	environment := SLDefaultEnvironment new
		"initializeSwaLint;"
		addPlugIn: SLPlugIn.
	SLDefaultDialog open: environment.