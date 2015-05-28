tests
namespaceSimulation: aSLSystemTestObject

	<slTestName: 'Namespace Simulation'
	description: 'Within a project, all classes should start with a prefix.' >

	aSLSystemTestObject shouldBeSystem.
	self testRunner 
		hideTest: #namespaceSimulation:;
		addTestToSelection: #nsTotal: inCategory: 'Namespace Simulation';
		addTestToSelection: #nsClass: inCategory: 'Namespace Simulation';
		addTestToSelection: #nsFreeClasses: inCategory: 'Namespace Simulation'.
	^ self booleanResult: true