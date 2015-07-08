overview-pyramid
createMorphForCYCLO
	| morph resultmorph namemorph yPosition |

	yPosition := (8*self defaultMorphEntryHeight).

	morph := RectangleMorph new.
		morph extent: ((self defaultMorphEntryWidth)+(5*(self defaultMorphEntryWidthExtension)))@(self defaultMorphEntryHeight).
	morph position: ((self getMainMorphCenterX)-(5*(self defaultMorphEntryWidthExtension)))@yPosition.
	resultmorph := (TextMorph new contents: (overviewResults at: #cyclo) asString).
	morph addMorph: resultmorph.
	resultmorph position: ((morph position x)+(morph width)-(resultmorph width)-5)@yPosition.
	namemorph := (TextMorph new contents: 'CYCLO').
	morph addMorph: namemorph.
	namemorph position: ((morph position x)+5)@yPosition.


	^ morph