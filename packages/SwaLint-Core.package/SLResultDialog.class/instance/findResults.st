updating
findResults
	| resultsDict resultList allTestObjects keys |

	(classesSelected isNil or: 
	testsSelected isNil or:
	self environment isNil) ifTrue: [ ^ Set new ].

	allTestObjects := OrderedCollection new.
	allTestObjects add: (self environment testSystem).
	allTestObjects addAll: (self environment testSystem children).
	classesSelected do: [ :each | allTestObjects addAll: (self fetchChildTestObjectsFrom: each)].

	resultsDict := Dictionary new.

	self environment results do: [ :each | 
		((allTestObjects includes: (each testObject)) 
		and: (testsSelected anySatisfy: [ :testData | testData symbol = each testData symbol])) 
			ifTrue: [
				self isOrderedByTests
					ifTrue: [
						| key |
						key := each testData symbol.
						resultsDict at: key ifAbsentPut: [OrderedCollection with: (SLResultListDummy forCategorizer: each testData)].
						(resultsDict at: key) add: each]
					ifFalse:  [
						| key |
						key := each testObject name.
						resultsDict at: key ifAbsentPut: [OrderedCollection with: (SLResultListDummy forCategorizer: each testObject)].
						(resultsDict at: key) add: each]]].
	keys := resultsDict keys asOrderedCollection sorted.
	resultList := OrderedCollection new.
	(keys includes: #'Tested System') ifTrue: [
			resultList addAll: (resultsDict at: #'Tested System').
			keys remove: #'Tested System'.
		].
	keys do: [ :each | resultList addAll: (resultsDict at: each) ].
	^ resultList 