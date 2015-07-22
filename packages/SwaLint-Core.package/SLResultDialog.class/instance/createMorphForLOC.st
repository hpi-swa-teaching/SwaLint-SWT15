overview-pyramid
createMorphForLOC
	| morph resultmorph namemorph calcmorph yPosition |

	yPosition := (6*self defaultMorphEntryHeight).

	morph := RectangleMorph new.
	morph extent: ((self defaultMorphEntryWidth)+(4*(self defaultMorphEntryWidthExtension)))@(self defaultMorphEntryHeight).
	morph position: ((self getMainMorphCenterX)-(4*(self defaultMorphEntryWidthExtension)))@yPosition.
	resultmorph := (TextMorph new contents: (overviewResults at: #loc) asString).
	morph addMorph: resultmorph.
	resultmorph position: ((morph position x)+(morph width)-(resultmorph width)-5)@yPosition.
	namemorph := (TextMorph new contents: 'LOC').
	morph addMorph: namemorph.
	namemorph position: ((morph position x)+5)@yPosition.
	calcmorph := (TextMorph new contents: (((overviewResults at: #cyclo)/(overviewResults at: #loc)) asFloat printShowingMaxDecimalPlaces: 3) asString).
	morph addMorph: calcmorph.
	calcmorph position: ((morph position x)-(calcmorph width)-5)@yPosition.

	^ morph