accessing
selectedTests

	^ self testsModel select: [ :test | test isUserSelected]