examples
exampleWorkbench

	| workbench change steppingDefinition domainModelWorkbench |
	change := SimulationStateChange with: [:currentState | currentState + 1 ].
	steppingDefinition := SteppingDefinition repeat: 5.
	domainModelWorkbench := FixedDomainModelWorkbench with: 0 and: change by: steppingDefinition.
	workbench := LabWorkbench using: domainModelWorkbench.
	(LabWorkbenchPresenter on: workbench using: self observationInterfaceSpecsForExample) openWithSpec.
	workbench inspect