initialization
initializeWith: steppingDefinition from: anInitialState changingBy: changeSpecification
 
	stepper := steppingDefinition stepper.
	initialState := anInitialState.
	change := changeSpecification.
	consumer := SimulationStepNullConsumer new