accessing-test
selectInverseTests
	"Fixed to update all selections now that the
	selection invalidation has been optimised."
	
	testsSelected := tests asSet 
		removeAll: testsSelected;
		yourself.
	self
		changed: #testSelected;
		changed: #runnable;
		update.