test objects
workbench

	| domainModelWorkbench |
	domainModelWorkbench := FixedDomainModelWorkbench
		startingAt: 1
		changingWith: (SimulationStateChange with: [ :currentState | currentState * 2 ])
		settingInitialStepsWith: [:steppingWorkbench | steppingWorkbench repeat: 5 steppingBy: 1 ].
	^LabWorkbench using: domainModelWorkbench