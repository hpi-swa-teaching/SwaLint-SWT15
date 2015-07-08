accessing-results
selectAllResults
	"Fixed to update all selections now that the
	selection invalidation has been optimised."
	self isMultiSelectable ifTrue: [
		resultsSelected := (self results select: [:each | each hasDetails]) asSet.
		self changed: #resultSelected.]