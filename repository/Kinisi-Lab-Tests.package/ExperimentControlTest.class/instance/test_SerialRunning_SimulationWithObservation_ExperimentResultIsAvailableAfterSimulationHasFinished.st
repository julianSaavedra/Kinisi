test - serial run
test_SerialRunning_SimulationWithObservation_ExperimentResultIsAvailableAfterSimulationHasFinished

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
	experiment := lab newExperiment.
	
	self assertExperimentHasNotStartedIn: experiment.
	self assertSimulationHasNotStartedIn: experiment.
	self assertObservationHasNotStartedIn: experiment.
	
	experiment play.
	self waitUnilSimulationIsFinished: experiment.
	
	self assertSimulationHasEndedIn: experiment.
	self assert: experiment result notNil.
	
	self waitUnilIsFinished: experiment.
	self assertExperimentHasEndedIn: experiment.
	self assertSimulationHasEndedIn: experiment.
	self assertObservationsHasEndedIn: experiment	
	