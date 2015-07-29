finalization
install

	self unload.
	(TheWorldMenu respondsTo: #unregisterOpenCommand:)
		ifTrue: [TheWorldMenu unregisterOpenCommand: self swaLint].
	TheWorldMenu registerOpenCommand: {self swaLint. {SwaLint. #open}}.
	self debugMode: SLPreferences DebugMode.
	self registerPlugIn: SLPlugIn.