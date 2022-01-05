initialization
initializeBasedOn: experimentDefinition

 	stepper := SimulationStepper basedOn: experimentDefinition steppingMode.
	initialState := experimentDefinition initialState.
	change := experimentDefinition change.
	self resetResults