configuration
configureTestDictionaryForBrainClass

	testRunner testDictionary addAll: 
		{(#weightedMethodCount -> (SLTestData newFromArray: (SLClassMetricsPlugIn offeredTestsData at: 3) plugin: SLClassMetricsPlugIn)).
		(#tightClassCohesion -> (SLTestData newFromArray: (SLClassMetricsPlugIn offeredTestsData at: 12) plugin: SLClassMetricsPlugIn)).
		(#brainMethod -> (SLTestData newFromArray: (SLDisharmonyPlugIn offeredTestsData at: 3) plugin: SLDisharmonyPlugIn)).
		(#classLOC -> (SLTestData newFromArray: (SLClassMetricsPlugIn offeredTestsData at: 4) plugin: SLClassMetricsPlugIn)).}.