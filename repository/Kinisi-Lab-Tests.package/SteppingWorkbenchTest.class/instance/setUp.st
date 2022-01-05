running
setUp

	| domainModelWorkbench |
	super setUp.
	steppingDelta := 1.
	domainModelWorkbench := FixedDomainModelWorkbench
		startingAt: 1
		changingWith: (SimulationStateChange with: [ :currentState | currentState * 2 ])
		configuringSteppingWith: [:steppingWorkbench | steppingWorkbench repeat: 5 steppingBy: steppingDelta ].
	workbench := LabWorkbench using: domainModelWorkbench