overview-pyramid
createMorphForNOM2
	| morph resultmorph namemorph calcmorph yPosition |

	yPosition := (6*self defaultMorphEntryHeight).

	morph := RectangleMorph new.
	morph extent: ((self defaultMorphEntryWidth)+(3*(self defaultMorphEntryWidthExtension)))@(self defaultMorphEntryHeight).
	morph position: ((self getMainMorphCenterX)+(self defaultMorphEntryWidth))@yPosition.
	resultmorph := (TextMorph new contents: (overviewResults at: #nom) asString).
	morph addMorph: resultmorph.
	resultmorph position: ((morph position x) + 5)@yPosition.
	namemorph := (TextMorph new contents: 'NOM').
	morph addMorph: namemorph.
	namemorph position: ((morph position x)+(morph width)-(namemorph  width)-5)@yPosition.
	calcmorph := (TextMorph new contents: (((overviewResults at: #calls)/(overviewResults at: #nom)) asFloat roundDownTo: 0.001) asString).
	morph addMorph: calcmorph.
	calcmorph position: ((morph position x)+(morph width)+5)@yPosition.

	^ morph