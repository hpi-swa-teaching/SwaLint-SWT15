initialize-release
defaultResults
	
	results := (SLResultListModel 
		withModel: self withMessage: #selectableResults
		withAsStringSelector: #format:).
	
	testsModel addDependent: results.
	classesModel addDependent: results.
	results addDependent: self.  