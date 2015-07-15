SwaLint
addPlugIn: aSLPlugInClass
	"Register all tests offered by the plug-in class."

	aSLPlugInClass subclassesDo: [ :subclass |
		self addPlugIn: subclass].
	aSLPlugInClass offeredTests do: [ :test |
		self addTest: test].

	self reload.
	self refreshAllDialogs.