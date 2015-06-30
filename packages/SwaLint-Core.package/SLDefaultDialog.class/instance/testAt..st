accessing-test
testAt: anInteger

	^ testsSelected includes: (self tests at: anInteger ifAbsent: [ ^ false ]).