tests
assert: simulationStepResults areTheOnesProducedBy: simulation

	self assert: simulationStepResults notEmpty.
	simulation result withTimeAndStateDo: [:stepTime :stepState | 
		self assert: (simulationStepResults 	anySatisfy: [:simulationStep | 
						simulationStep time = stepTime
							and: [ simulationStep value = stepState ] ]) ]