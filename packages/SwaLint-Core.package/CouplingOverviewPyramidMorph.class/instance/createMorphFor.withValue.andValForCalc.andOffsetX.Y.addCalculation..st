as yet unclassified
createMorphFor: aString withValue: aValue andValForCalc: anotherValue andOffsetX: anInteger Y: anotherInteger addCalculation: aBoolean
	| morph resultmorph namemorph calcmorph yPosition |

	yPosition := (anotherInteger*self defaultMorphEntryHeight).

	morph := RectangleMorph new.
	morph extent: ((self defaultMorphEntryWidth)+(anInteger*(self defaultMorphEntryWidthExtension)))@(self defaultMorphEntryHeight).
	morph position: ((self getMainMorphCenterX)+(self defaultMorphEntryWidth))@yPosition.
	resultmorph := (TextMorph new contents: aValue asString).
	morph addMorph: resultmorph.
	resultmorph position: ((morph position x)+5)@yPosition.
	namemorph := (TextMorph new contents: aString).
	morph addMorph: namemorph.
	namemorph position: ((morph position x)+(morph width)-(namemorph  width)-5)@yPosition.
	aBoolean ifTrue: [
		calcmorph := (TextMorph new contents: ((anotherValue/aValue) asFloat printShowingMaxDecimalPlaces: 3) asString).
		morph addMorph: calcmorph.
		calcmorph position: ((morph position x)+(morph width)+5)@yPosition.
	].


	self addMorph: morph