tests
testDisplayShowingCollatzCurrentStateAsAnAnimation
	
	| interfaceSpec interfaceDefinition experiment display |
	interfaceSpec := CollatzConjectureAnimationInterfaceSpec new.
	interfaceDefinition := InterfaceDefinition named: 'Animation' with: interfaceSpec.
	observationWorkbench add: interfaceDefinition.

	experiment := lab newExperiment.
	display := (displayProvider displaysFor: experiment) first.
	displayHolder display: display.
	
	self runExperimentUntilHasFinished: experiment.
	
	self assert: experiment hasEnded