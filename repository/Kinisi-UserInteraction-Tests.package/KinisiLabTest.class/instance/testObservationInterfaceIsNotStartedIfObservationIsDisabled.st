tests
testObservationInterfaceIsNotStartedIfObservationIsDisabled

	| lab workbench experimentDefinition interface interfaceWasStarted observationDefinition |
	interface := PluggableObservationInterface
		onStartDo: [ interfaceWasStarted := true ]
		processWith: [:observation | ].
	observationDefinition := ObservationDefinition fixedWith: interface.
	observationDefinition := observationDefinition disableAll.
	experimentDefinition := ExperimentDefinition
		basedOn: 1
		changingWith: [ :step :currentState | currentState * 2 ]
		over: 1
		until: 5
		observingBasedOn: observationDefinition.
	workbench := LabWorkbench fixedWith: experimentDefinition.
	lab := KinisiLab using: workbench.

	interfaceWasStarted := false.
	lab performExperiment.

	self deny: interfaceWasStarted