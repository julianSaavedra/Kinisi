initialization
initializeBasedOn: steppingMode
 
	delta := steppingMode delta.
	endCondition := (StepperEndConditionResolver for: steppingMode) resolve