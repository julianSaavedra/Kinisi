building configuration
assertPaticleIsIncludedInSubjectUniverse: particle

	(subjectUniverse includes: particle) ifFalse: [
		| errorMessage |
		errorMessage := '<1s> is not included in subject environment'
			expandMacrosWith: particle particleName.
		PhysicsModelError signal: errorMessage ]