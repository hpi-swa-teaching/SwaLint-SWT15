overview-pyramid
createMorphForCALLS
	| morph resultmorph namemorph calcmorph yPosition |

	yPosition := (7*self defaultMorphEntryHeight).

	morph := RectangleMorph new.
	morph extent: ((self defaultMorphEntryWidth)+(4*(self defaultMorphEntryWidthExtension)))@(self defaultMorphEntryHeight).
	morph position: ((self getMainMorphCenterX)+(self defaultMorphEntryWidth))@yPosition.
	resultmorph := (TextMorph new contents: (overviewResults at: #calls) asString).
	morph addMorph: resultmorph.
	resultmorph position: ((morph position x) + 5)@yPosition.
	namemorph := (TextMorph new contents: 'CALLS').
	morph addMorph: namemorph.
	namemorph position: ((morph position x)+(morph width)-(namemorph  width)-5)@yPosition.
	calcmorph := (TextMorph new contents: (((overviewResults at: #fanout)/(overviewResults at: #calls)) asFloat printShowingMaxDecimalPlaces: 3) asString).
	morph addMorph: calcmorph.
	calcmorph position: ((morph position x)+(morph width)+5)@yPosition.

	^ morph