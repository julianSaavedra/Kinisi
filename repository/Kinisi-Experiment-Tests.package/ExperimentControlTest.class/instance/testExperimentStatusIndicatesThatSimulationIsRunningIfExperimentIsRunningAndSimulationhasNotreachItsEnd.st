tests
testExperimentStatusIndicatesThatSimulationIsRunningIfExperimentIsRunningAndSimulationhasNotreachItsEnd

	| domainModelWorkbench workbench lab experiment simulationHasReachedThreeSteps testHasAlreadyAsserted experimentHasEnded |
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
	workbench := LabWorkbench using: domainModelWorkbench.
	lab := KinisiLab using: workbench.
	
	experiment := lab newExperiment.
	
	self assertSimulationHasNotStartedIn: experiment.
	[experiment run. experimentHasEnded signal ] fork.
	simulationHasReachedThreeSteps wait.
	self assertSimulationIsRunningIn: experiment.
	testHasAlreadyAsserted signal.
	experimentHasEnded wait.
	self denySimulationIsRunningIn: experiment
			

	