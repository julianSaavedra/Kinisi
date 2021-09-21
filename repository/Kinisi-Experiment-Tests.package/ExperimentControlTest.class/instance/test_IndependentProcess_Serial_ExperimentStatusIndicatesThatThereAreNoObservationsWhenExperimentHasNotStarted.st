tests - simultaneous
test_IndependentProcess_Serial_ExperimentStatusIndicatesThatThereAreNoObservationsWhenExperimentHasNotStarted

	| domainModelWorkbench workbench lab experiment |
	domainModelWorkbench := FixedDomainModelWorkbench
		startingAt: 1
		changingWith: (SimulationStateChange with: [ :currentState | currentState * 2 ])
		configuringSteppingWith: [:steppingWorkbench | steppingWorkbench repeat: 5 steppingBy: 1 ].
	workbench := LabWorkbench using: domainModelWorkbench.
	workbench useIndependentProcessSerialRunningMode.
	lab := KinisiLab using: workbench.
	
	experiment := lab newExperiment.

	self assertThereAreNoObservationsInStatusFor: experiment