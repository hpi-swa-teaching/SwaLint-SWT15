finalization
install

	(TheWorldMenu respondsTo: #unregisterOpenCommand:)
		ifTrue: [TheWorldMenu unregisterOpenCommand: self swaLint].
	TheWorldMenu registerOpenCommand: {self swaLint. {SwaLint. #open}}.
	SwaLint debugMode: SLPreferences DebugMode.