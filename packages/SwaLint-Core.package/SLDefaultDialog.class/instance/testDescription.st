accessing-test
testDescription
	
	| test |
	descriptionCollection isEmpty
		ifTrue: [^ 'There is no test chosen.']
		ifFalse: [test := descriptionCollection last].
	

	^ test 
		ifNil: ['There is no test chosen.']
		ifNotNil: [test name, ':',Character cr, (test description
				ifNil: ['no description']
				ifNotNil: [test description])]