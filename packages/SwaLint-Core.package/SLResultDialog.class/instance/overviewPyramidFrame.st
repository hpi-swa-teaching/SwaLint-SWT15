building
overviewPyramidFrame

	^ LayoutFrame
		fractions: (1@0 corner: 1@1)
		offsets: ((self overviewPyramidOffset negated @ 0) corner: 0@0) 