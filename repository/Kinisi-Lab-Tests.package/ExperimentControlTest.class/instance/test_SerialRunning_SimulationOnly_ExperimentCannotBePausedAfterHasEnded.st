test - serial run
test_SerialRunning_SimulationOnly_ExperimentCannotBePausedAfterHasEnded

	| domainModelWorkbench workbench lab experiment simulationHasReachedThreeSteps testHasAlreadyAsserted |
	simulationHasReachedThreeSteps := Semaphore new.
	testHasAlreadyAsserted := Semaphore new.
	domainModelWorkbench := FixedDomainModelWorkbench
		startingAt: 1
		changingWith: (SimulationStateChange with: [:currentState | currentState * 2 ])
		configuringSteppingWith: [:steppingWorkbench | steppingWorkbench repeat: 5 steppingBy: 1 ].
	workbench := LabWorkbench using: domainModelWorkbench.
	lab := KinisiLab using: workbench.
	experiment := lab newExperiment.
	
	self assertExperimentHasNotStartedIn: experiment.
	self assertSimulationHasNotStartedIn: experiment.
	self assertThereAreNoObservationsInStatusFor: experiment.

	experiment play.
	self waitUnilIsFinished: experiment.
	self assertExperimentHasEndedIn: experiment.
	self assertSimulationHasEndedIn: experiment.
	self assertThereAreNoObservationsInStatusFor: experiment.
	
	self
		should: [ experiment pause ]
		raise: Error
		whoseDescriptionIncludes: 'Experiment has already ended.'.

	self assertExperimentHasEndedIn: experiment.
	self assertSimulationHasEndedIn: experiment.
	self assertThereAreNoObservationsInStatusFor: experiment