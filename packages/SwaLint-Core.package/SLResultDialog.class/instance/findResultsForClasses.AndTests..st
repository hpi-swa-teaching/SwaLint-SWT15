updating
findResultsForClasses: aCollection AndTests: anotherCollection
	"| result testClasses |"
	(aCollection isNil or: 
	anotherCollection isNil or:
	self environment isNil) ifTrue: [ ^ Set new ].

	"result := OrderedCollection new.
	self environment addResultsOf: anotherCollection from: self environment testSystem to: result.
	testClasses := self environment classes listItems select: [ :each | aCollection includes: each testObject]."
	"deselectedTest := OrderedCollection new."
	"^ testClasses
		inject: result
		into: [ :list :aClass |
			self environment addResultsOf: anotherCollection from: aClass andChildrenTo: list]."

	^ self environment results listItems