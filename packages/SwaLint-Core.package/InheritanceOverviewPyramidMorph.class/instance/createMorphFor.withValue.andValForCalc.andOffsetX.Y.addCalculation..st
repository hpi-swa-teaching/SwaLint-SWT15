as yet unclassified
createMorphFor: aString withValue: aValue andValForCalc: anotherValue andOffsetX: anInteger Y: anotherInteger addCalculation: aBoolean
	| morph resultmorph namemorph yPosition |

	yPosition := (anotherInteger*self defaultMorphEntryHeight).

	morph := RectangleMorph new.
	morph extent: (self defaultMorphEntryWidth)@(self defaultMorphEntryHeight).
	morph position: (self getMainMorphCenterX)@yPosition.
	resultmorph := (TextMorph new contents: (aValue asFloat printShowingMaxDecimalPlaces: 3) asString).
	morph addMorph: resultmorph.
	resultmorph position: ((morph position x)+(morph width)-(resultmorph width)-5)@yPosition.
	namemorph := (TextMorph new contents: aString).
	morph addMorph: namemorph.
	namemorph position: ((morph position x)+5)@yPosition.

	self addMorph: morph