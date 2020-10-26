initialization
initializeWith: steppingMode from: anInitialState changingBy: changeSpecification
 
	stepper := SimulationStepper basedOn: steppingMode.
	initialState := anInitialState.
	change := changeSpecification