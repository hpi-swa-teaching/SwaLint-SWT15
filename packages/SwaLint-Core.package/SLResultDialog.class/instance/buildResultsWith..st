building
buildResultsWith: aBuilder

	^ Smalltalk isMorphic
		ifFalse: [self buildResultsListWith: aBuilder]
		ifTrue: [
			aBuilder pluggablePanelSpec new
				frame: self resultsFrame;
				children: ({
					(self buildResultsListWith: aBuilder)
						frame: self resultsFrameInPanel;
						yourself.
					aBuilder pluggablePanelSpec new
						name: self resultsPanelName;
						frame: (self overviewPyramidFrame);
						yourself.
			} as: OrderedCollection)]
