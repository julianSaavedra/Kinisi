tests
testDisplayShowingCollatzCurrentStateAsTextInTranscript
	
	| interfaceSpec interfaceDefinition experiment display |
	interfaceSpec := TranscriptInterfaceSpec new.
	interfaceDefinition := InterfaceDefinition named: 'Transcript' with: interfaceSpec.
	observationWorkbench add: interfaceDefinition.

	experiment := lab newExperiment.
	display := (displayProvider displaysFor: experiment) first.
	displayHolder display: display.
	
	experiment run