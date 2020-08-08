initialization
initializeWith: steppingDefinition from: anInitialState changingBy: changeSpecification
 
	stepper := SimulationStepper basedOn: steppingDefinition.
	initialState := anInitialState.
	change := changeSpecification