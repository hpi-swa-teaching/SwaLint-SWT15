SwaLint
debug

	^ self debugMode ifNil: [self debugMode: false; debugMode]