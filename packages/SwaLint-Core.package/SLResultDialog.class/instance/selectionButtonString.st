accessing
selectionButtonString

	self isMultiSelectable 
		ifTrue: [^ self singleSelectionString]
		ifFalse: [^ self multiSelectionString]