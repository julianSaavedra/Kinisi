tests
testNullExampleDoesNotAffectWorkbench

	| workbench example originalDomainScenario originalObservationDefinition postObservationDefinition |
	workbench := self workbench.
	originalDomainScenario := workbench modelWorkbench scenario.
	originalObservationDefinition := workbench observationWorkbench definition.
	example := LabWorkbenchExampleSetting null.

	example applyOn: workbench.

	self assert: workbench modelWorkbench scenario equals: originalDomainScenario.
	postObservationDefinition := workbench observationWorkbench definition.
	self assert: postObservationDefinition period equals: originalObservationDefinition period.
	self assert: postObservationDefinition interfaceDefinitions equals: originalObservationDefinition interfaceDefinitions