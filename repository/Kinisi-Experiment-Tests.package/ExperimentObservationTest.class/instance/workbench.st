test objects
workbench

	| domainModelWorkbench |
	domainModelWorkbench := FixedDomainModelWorkbench
		with: 0
		and: (SimulationStateChange with: [ :currentState | currentState + 1 ])
		by: (SteppingDefinition repeat: 5).
	^LabWorkbench using: domainModelWorkbench