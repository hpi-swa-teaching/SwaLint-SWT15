as yet unclassified
newWithResults: aDictionary
	
	| temp |
	temp := self new
		results: aDictionary.
	temp buildMorphs.
	^ temp.

	