tests
testExperimentIsObservedThroughDisplaySpecifiedByInterfaceSpecAsCanvas

	| interfaceDefinition displayProvider experiment display canvasDisplay displayProviderSpec |
	interfaceDefinition := self
		simplePassthroughInterfaceNamed: 'ObservationsCollector'
		displayingWith: [ :aDisplayProvider | aDisplayProvider displayForCanvas ].
	observationWorkbench add: interfaceDefinition.
	experiment := lab newExperiment.

	canvasDisplay := ObservationsRecorderDisplay new.
	displayProviderSpec := PluggableDisplayProviderSpecification with: [ canvasDisplay ] and: [ #TranscriptDisplay ].
	displayProvider := DisplayProvider using: displayProviderSpec.
	display := (displayProvider displaysFor: experiment) first.

	self assert: display identicalTo: canvasDisplay.
	self assertEmpty: display shownObservations.

	experiment run.
	self waitUnilIsFinished: display.

	self assert: experiment result wasObservedIn: display