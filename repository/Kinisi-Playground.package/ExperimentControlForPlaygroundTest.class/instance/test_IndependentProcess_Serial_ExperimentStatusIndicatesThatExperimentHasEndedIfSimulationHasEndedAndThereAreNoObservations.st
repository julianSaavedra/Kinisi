tests - simultaneous
test_IndependentProcess_Serial_ExperimentStatusIndicatesThatExperimentHasEndedIfSimulationHasEndedAndThereAreNoObservations

	| domainModelWorkbench workbench lab experiment |
	domainModelWorkbench := FixedDomainModelWorkbench
		startingAt: 1
		changingWith: (SimulationStateChange with: [:currentState | currentState * 2])
		configuringSteppingWith: [:steppingWorkbench | steppingWorkbench repeat: 5 steppingBy: 1 ].
	workbench := LabWorkbench using: domainModelWorkbench.
	lab := KinisiLab using: workbench.
	workbench useIndependentProcessSerialRunningMode.
	experiment := lab newExperiment.
	
	self assertExperimentHasNotStartedIn: experiment.
	experiment run.
	self waitUnilIsFinished: experiment.
	
	self assertSimulationHasEndedIn: experiment.
	self assertThereAreNoObservationsInStatusFor: experiment.
	self assertExperimentHasEndedIn: experiment