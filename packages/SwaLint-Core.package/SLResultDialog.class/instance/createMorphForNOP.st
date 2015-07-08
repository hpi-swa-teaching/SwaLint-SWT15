overview-pyramid
createMorphForNOP
	| morph resultmorph namemorph calcmorph yPosition |

	yPosition := (4*self defaultMorphEntryHeight).

	morph := RectangleMorph new.
	morph extent: ((self defaultMorphEntryWidth)+(1*(self defaultMorphEntryWidthExtension)))@(self defaultMorphEntryHeight).
	morph position: ((self getMainMorphCenterX)-(1*(self defaultMorphEntryWidthExtension)))@yPosition.
	resultmorph := (TextMorph new contents: (overviewResults at: #nop) asString).
	morph addMorph: resultmorph.
	resultmorph position: ((morph position x)+(morph width)-(resultmorph width)-5)@yPosition.
	namemorph := (TextMorph new contents: 'NOP').
	morph addMorph: namemorph.
	namemorph position: ((morph position x)+5)@yPosition.
	calcmorph := (TextMorph new contents: (((overviewResults at: #noc)/(overviewResults at: #nop)) asFloat roundDownTo: 0.001) asString).
	morph addMorph: calcmorph.
	calcmorph position: ((morph position x)-(calcmorph width)-5)@yPosition.

	^ morph