running
run

	| simulation observation simulationProcess consumer |
	observation := ObservationController basedOn: definition observationDefinition.
	consumer := SimulationStepPluggableConsumer processWith: [:step | observation process: step ] andWhenFinishedDo: [ observation close].

	simulation := Simulation
		with: definition steppingDefinition
		from: definition initialState
		changingBy: definition change.

	observation play.
	simulationProcess := [simulation runInforming:consumer.
	result := simulation result] forkAt: Processor timingPriority - 1  named: 'Simulation'.
	
	[simulationProcess isTerminated and: [observation isTerminated]] whileFalse