updating
fetchAllTestObjects
	"Fetches System- and CategoryTestObjects as well as all selected ClassTestObjects "
	| allTestObjects |
	allTestObjects := OrderedCollection new
		add: (self environment testSystem);
		addAll: (self environment testSystem children).
	classesSelected do: [ :each | allTestObjects addAll: (self fetchChildTestObjectsFrom: each)].
	
	^ allTestObjects