tests
assert: simulationStepResults areTheOnesProducedBy: simulation

	self assert: simulationStepResults notEmpty.
	simulation result withTimeAndStateDo: [:stepTime :stepState |
		| stepResultsIsPresent |
		stepResultsIsPresent := (simulationStepResults anySatisfy: [:simulationStep | 
				simulationStep time = stepTime and: [ simulationStep value = stepState ] ]).
		self assert: stepResultsIsPresent ]