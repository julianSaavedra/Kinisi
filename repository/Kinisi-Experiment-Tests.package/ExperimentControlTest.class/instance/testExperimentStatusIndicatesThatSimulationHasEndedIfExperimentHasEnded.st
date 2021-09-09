tests - revisit
testExperimentStatusIndicatesThatSimulationHasEndedIfExperimentHasEnded

	| domainModelWorkbench workbench lab experiment |
	domainModelWorkbench := FixedDomainModelWorkbench
		startingAt: 1
		changingWith: (SimulationStateChange with: [:currentState | currentState * 2 ])
		configuringSteppingWith: [:steppingWorkbench | steppingWorkbench repeat: 5 steppingBy: 1 ].
	workbench := LabWorkbench using: domainModelWorkbench.
	lab := KinisiLab using: workbench.
	
	experiment := lab newExperiment.
	experiment run.

	self assertSimulationHasEndedIn: experiment