test - serial run
test_SerialRunning_SimulationWithObservation_ExperimentWasTerminatedWhileObservationWasRunning

	| domainModelWorkbench workbench lab experiment observationHasProcessedThreeResults testHasAlreadyAsserted experimentHasEnded interfaceDefinition |
	observationHasProcessedThreeResults := Semaphore new.
	testHasAlreadyAsserted := Semaphore new.
	experimentHasEnded := Semaphore new.
	domainModelWorkbench := FixedDomainModelWorkbench
		startingAt: 1
		changingWith: (SimulationStateChange with: [:currentState | currentState * 2 ])
		configuringSteppingWith: [:steppingWorkbench | steppingWorkbench repeat: 5 steppingBy: 1 ].
	interfaceDefinition := self
		interfaceDefinitionNamed: 'ObservationsCollector'
		processingWith: [:observation |
			observation value = 8 ifTrue: [ observationHasProcessedThreeResults signal. testHasAlreadyAsserted wait ].
			observation value]
		andDisplayingUsing: [:displayProvider | displayProvider displayForCanvas ].
	
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
	
	observationHasProcessedThreeResults wait.
	self assertExperimentIsRunningIn: experiment.
	self assertSimulationHasEndedIn: experiment.
	self assertObservationIsRunningIn: experiment.
	
	experiment terminate.
		
	self assertExperimentHasEndedIn: experiment.
	self assertSimulationHasEndedIn: experiment.
	self assertObservationsHasEndedIn: experiment