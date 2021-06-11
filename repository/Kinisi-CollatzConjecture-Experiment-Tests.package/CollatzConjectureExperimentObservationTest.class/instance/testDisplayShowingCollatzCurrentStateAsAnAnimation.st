tests
testDisplayShowingCollatzCurrentStateAsAnAnimation
	
	| interfaceSpec interfaceDefinition experiment display |
	interfaceSpec := CollatzConjectureAnimationInterfaceSpec new.
	interfaceDefinition := InterfaceDefinition named: 'Transcript' with: interfaceSpec.
	observationWorkbench add: interfaceDefinition.

	experiment := lab newExperiment.
	display := (displayProvider displaysFor: experiment) first.
	displayHolder display: display.
	
	experiment run