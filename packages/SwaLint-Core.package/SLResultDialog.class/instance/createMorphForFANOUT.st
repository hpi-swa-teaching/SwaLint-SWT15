overview-pyramid
createMorphForFANOUT
	| morph resultmorph namemorph calcmorph yPosition |

	yPosition := (8*self defaultMorphEntryHeight).

	morph := RectangleMorph new.
	morph extent: ((self defaultMorphEntryWidth)+(5*(self defaultMorphEntryWidthExtension)))@(self defaultMorphEntryHeight).
	morph position: ((self getMainMorphCenterX)+(self defaultMorphEntryWidth))@yPosition.
	resultmorph := (TextMorph new contents: (overviewResults at: #fanout) asString).
	morph addMorph: resultmorph.
	resultmorph position: ((morph position x) + 5)@yPosition.
	namemorph := (TextMorph new contents: 'FANOUT').
	morph addMorph: namemorph.
	namemorph position: ((morph position x)+(morph width)-(namemorph  width)-5)@yPosition.



	^ morph