test - serial run
test_SerialRunning_SimulationWithObservation_ExperimentWasTerminatedWhenSimulationWasPaused

	| domainModelWorkbench workbench lab experiment simulationHasReachedThreeSteps testHasAlreadyAsserted experimentHasEnded interfaceDefinition |
	simulationHasReachedThreeSteps := Semaphore new.
	testHasAlreadyAsserted := Semaphore new.
	experimentHasEnded := Semaphore new.
	domainModelWorkbench := FixedDomainModelWorkbench
		startingAt: 1
		changingWith: (SimulationStateChange with: [:currentState |
			| newState |
			newState := currentState * 2.
			newState = 8 ifTrue: [ simulationHasReachedThreeSteps signal. testHasAlreadyAsserted wait ].
			newState])
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
	
	experiment play.
	
	simulationHasReachedThreeSteps wait.
	self assertExperimentIsRunningIn: experiment.
	self assertSimulationIsRunningIn: experiment.
	self assertObservationHasNotStartedIn: experiment.
	
	experiment pause.
	self assertExperimentIsPausedIn: experiment.
	self assertSimulationIsPausedIn: experiment.
	self assertObservationHasNotStartedIn: experiment.
	
	experiment terminate.
		
	self assertExperimentHasEndedIn: experiment.
	self assertSimulationHasEndedIn: experiment.
	self assertObservationsHasEndedIn: experiment