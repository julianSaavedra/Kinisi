test objects
domainModelWorkbench

	^FixedDomainModelWorkbench
		  startingAt: 1
		  changingWith: (SimulationStateChange with: [ :currentState | currentState * 2 ])
		  configuringSteppingWith: [ :steppingWorkbench | steppingWorkbench repeat: 5 steppingBy: 1 ]