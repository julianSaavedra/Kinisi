test - serial run
test_SerialRunning_SimulationOnly_ExperimentHasNotEndedWhenPaused

	| domainModelWorkbench workbench lab experiment simulationHasReachedThreeSteps testHasAlreadyAsserted |
	simulationHasReachedThreeSteps := Semaphore new.
	testHasAlreadyAsserted := Semaphore new.
	domainModelWorkbench := FixedDomainModelWorkbench
		startingAt: 1
		changingWith: (SimulationStateChange with: [:currentState |
			| newState |
			newState := currentState * 2.
			newState = 8 ifTrue: [ simulationHasReachedThreeSteps signal. testHasAlreadyAsserted wait ].
			newState])
		configuringSteppingWith: [:steppingWorkbench | steppingWorkbench repeat: 5 steppingBy: 1 ].
	workbench := LabWorkbench using: domainModelWorkbench.
	lab := KinisiLab using: workbench.
	experiment := lab newExperiment.
	
	self assertExperimentHasNotStartedIn: experiment.
	self assertSimulationHasNotStartedIn: experiment.
	self assertThereAreNoObservationsInStatusFor: experiment.
	experiment play.
	simulationHasReachedThreeSteps wait.
	self assertExperimentIsRunningIn: experiment.
	self assertSimulationIsRunningIn: experiment.
	self assertThereAreNoObservationsInStatusFor: experiment.
	
	experiment pause.
	self assertExperimentIsPausedIn: experiment.
	self deny: experiment hasEnded.
	
	testHasAlreadyAsserted signal.	
	experiment play.
	self waitUnilIsFinished: experiment.
	self assertSimulationHasEndedIn: experiment.
	self assertExperimentHasEndedIn: experiment.
	self assertThereAreNoObservationsInStatusFor: experiment