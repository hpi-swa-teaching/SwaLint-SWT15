finalization
open

	| environment |
	environment := SLDefaultEnvironment new
		"initializeSwaLint;"
		addPlugIn: SLPlugIn.
	SLDefaultDialog open: environment.