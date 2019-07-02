asserting
assertNonNegativeTimes: simulationStepCollection

	(simulationStepCollection anySatisfy: [:aStep | aStep key negative ])
		ifTrue: [ SimulationError signal: 'Step cannot have negative time.' ]