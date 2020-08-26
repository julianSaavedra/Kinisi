test objects
workbench

	| domainModelWorkbench |
	domainModelWorkbench := FixedDomainModelWorkbench
		with: 1
		and: (SimulationStateChange with: [ :currentState | currentState * 2 ])
		by: (SteppingDefinition repeat: 5).
	^LabWorkbench using: domainModelWorkbench