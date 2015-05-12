plugins
addPlugIn: aPlugInClass
	"Register all tests offered by the plug-in class."

	aPlugInClass isInstalled ifFalse: [^ self].
	Transcript show: aPlugInClass offeredTestsNew asString.
	Transcript cr.
	aPlugInClass offeredTestsNew do: [ :test |
		self addTest: test].
