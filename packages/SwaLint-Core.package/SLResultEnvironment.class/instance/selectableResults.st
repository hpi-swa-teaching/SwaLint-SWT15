accessing
selectableResults

	| selTests result |
	selTests := self testsModel selectedItems.
	result := OrderedCollection new.
	self addResultsOf: selTests from: self testSystem to: result.
	^ self classesModel selectedItems 
		inject: result
		into: [ :list :aClass |
			self addResultsOf: selTests from: aClass andChildrenTo: list].	