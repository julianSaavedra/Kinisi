test objects
workbench

	| domainModelWorkbench workbench |
	domainModelWorkbench := FixedDomainModelWorkbench
		with: 1
		and: (SimulationStateChange with: [ :currentState | currentState * 2 ]).
	workbench := LabWorkbench using: domainModelWorkbench with: ParticlesSteppingWorkbench default.
	workbench steppingWorkbench repeat: 5.
	
	^workbench
	