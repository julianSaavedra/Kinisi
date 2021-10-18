tests
testDisplayShowingCollatzCurrentStateAsTextInTranscript
	
	| interfaceSpec interfaceDefinition experiment display |
	interfaceSpec := CollatzConjectureTranscriptInterfaceSpec new.
	interfaceDefinition := InterfaceDefinition named: 'Transcript' with: interfaceSpec.
	observationWorkbench add: interfaceDefinition.

	experiment := lab newExperiment.
	display := (displayProvider displaysFor: experiment) first.
	displayHolder display: display.
	
	self runExperimentUntilHasFinished: experiment.
	
	self assert: experiment hasEnded