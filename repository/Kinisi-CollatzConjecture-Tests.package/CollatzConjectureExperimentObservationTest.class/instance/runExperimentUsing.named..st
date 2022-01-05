tests
runExperimentUsing: interfaceSpec named: name

	| experiment interfaceDefinition display |
	interfaceDefinition := InterfaceDefinition
		                       named: name
		                       with: interfaceSpec.
	observationWorkbench add: interfaceDefinition.

	experiment := lab newExperiment.
	display := (displayProvider displaysFor: experiment) first.
	displayHolder display: display.

	self runExperimentUntilHasFinished: experiment.

	self assert: experiment hasEnded