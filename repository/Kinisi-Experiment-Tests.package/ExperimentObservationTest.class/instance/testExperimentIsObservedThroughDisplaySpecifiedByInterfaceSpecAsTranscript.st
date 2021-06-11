tests
testExperimentIsObservedThroughDisplaySpecifiedByInterfaceSpecAsTranscript

	| interfaceDefinition displayProvider experiment display transcriptDisplay displayProviderSpec |
	interfaceDefinition := self
		simplePassthroughInterfaceNamed: 'ObservationsCollector'
		displayingWith: [ :aDisplayProvider | aDisplayProvider displayForTranscript ].
	observationWorkbench add: interfaceDefinition.
	experiment := lab newExperiment.

	transcriptDisplay := ObservationsRecorderDisplay new.
	displayProviderSpec := PluggableDisplayProviderSpecification with: [ #CanvasDisplay ] and: [ transcriptDisplay ].
	displayProvider := DisplayProvider using: displayProviderSpec.
	display := (displayProvider displaysFor: experiment) first.
	self assert: display identicalTo: transcriptDisplay.
	self assertEmpty: display shownObservations.

	experiment run.
	self waitUnilIsFinished: display.

	self assert: experiment result wasObservedIn: display