test - serial run
test_SerialRunning_SimulationWithObservation_ExperimentCannotBePausedIfNotStarted

	| domainModelWorkbench workbench lab experiment simulationHasReachedThreeSteps testHasAlreadyAsserted experimentHasEnded interfaceDefinition |
	simulationHasReachedThreeSteps := Semaphore new.
	testHasAlreadyAsserted := Semaphore new.
	experimentHasEnded := Semaphore new.
	domainModelWorkbench := FixedDomainModelWorkbench
		startingAt: 1
		changingWith: (SimulationStateChange with: [:currentState | currentState * 2])
		configuringSteppingWith: [:steppingWorkbench | steppingWorkbench repeat: 5 steppingBy: 1 ].
	interfaceDefinition := self simplePassthroughInterfaceNamed: 'ObservationsCollector'.
	workbench := LabWorkbench using: domainModelWorkbench.
	workbench observationWorkbench
		add: interfaceDefinition;
		period: (Duration milliSeconds: 50).
	lab := KinisiLab using: workbench.
	workbench useSerialRunningMode.
	experiment := lab newExperiment.
	
	self assertExperimentHasNotStartedIn: experiment.
	self assertSimulationHasNotStartedIn: experiment.
	self assertObservationHasNotStartedIn: experiment.
	
	self
		should: [ experiment pause ]
		raise: Error
		whoseDescriptionIncludes: 'Experiment has not started.'.

	self assertExperimentHasNotStartedIn: experiment.
	self assertSimulationHasNotStartedIn: experiment.
	self assertObservationHasNotStartedIn: experiment