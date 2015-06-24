private
buildNormalizedSource

	| startOfSource |
	startOfSource := (self startOfMethodBodyIn: self sourceString) min: self sourceString size.
	^ (((self sourceString allButFirst: startOfSource) lines
		collect: [:line | line withBlanksCondensed])
		reject: [:line | line isEmpty])
		asStringWithCr