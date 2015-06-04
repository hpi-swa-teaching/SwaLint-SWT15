plugins
addPlugIn: aPlugInClass
	"Register all tests offered by the plug-in class."
	"self haltIf: [aPlugInClass name = 'SLPlugIn']."
	Transcript show: 'addPlugIn: ', aPlugInClass name; cr.
	aPlugInClass isInstalled ifFalse: [
"		Transcript show: ' -> isInstalled'.
		Transcript cr.
"		^ self].
	
	aPlugInClass offeredTests do: [ :test |
		self addTest: test].
"	Transcript cr."
