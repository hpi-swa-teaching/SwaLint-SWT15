building
buildDescriptionWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		"color: Color lightGray;"
		getText: #testDescription;
		yourself.