tests
setUp

	| steppingWorkbench domainModelWorkbench |
	super setUp.
	resource := PhysicsTestResource new.
	steppingWorkbench := SteppingWorkbench new.
	steppingWorkbench
		repeat: 5
		steppingBy: resource oneSecond.
	domainModelWorkbench := FixedDomainModelWorkbench
		with: 1
		and: (SimulationStateChange with: [ :currentState | currentState * 2 ]).
	workbench := LabWorkbench using: domainModelWorkbench with: steppingWorkbench