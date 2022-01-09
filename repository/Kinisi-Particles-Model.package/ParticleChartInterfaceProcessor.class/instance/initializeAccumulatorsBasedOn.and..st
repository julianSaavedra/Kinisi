initialization
initializeAccumulatorsBasedOn: scenario and: interfaceSpec

	| particlePlotCreator |
	accumulatorsMap := Dictionary new.
	particlePlotCreator := ParticleChartPlotAccumulatorCreator basedOn: interfaceSpec.
	scenario particles do: [ :particle | 
		| accumulator |
		accumulator := particlePlotCreator newPlotAccumulatorFor: particle.
		accumulatorsMap at: particle particleName put: accumulator ]