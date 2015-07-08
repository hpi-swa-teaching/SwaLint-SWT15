building
resultsFrame

	^ LayoutFrame new
		leftFraction: self categoriesLeft offset: 0;
		topFraction: self categoriesBottom offset: 0;
		rightFraction: self classesRight offset: 0;
		bottomFraction: self buttonsTop offset: self categoriesOffsetBottom