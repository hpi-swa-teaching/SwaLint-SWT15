accessing-results
selectNoResults
	"Fixed to update all selections now that the
	selection invalidation has been optimised."
	
	resultsSelected := Set new.
	self changed: #resultSelected.