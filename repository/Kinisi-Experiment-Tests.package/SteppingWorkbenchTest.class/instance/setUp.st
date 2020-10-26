tests
setUp

	| domainModelWorkbench |
	super setUp.
	resource := PhysicsTestResource new.
	domainModelWorkbench := FixedDomainModelWorkbench
		startingAt: 1
		changingWith: (SimulationStateChange with: [ :currentState | currentState * 2 ])
		settingInitialStepsWith: [:steppingWorkbench | steppingWorkbench repeat: 5 steppingBy: resource oneSecond ].
	workbench := LabWorkbench using: domainModelWorkbench