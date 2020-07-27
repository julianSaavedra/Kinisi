running
run

	| simulation observation simulationProcess |
	observation := ObservationController basedOn: definition observationDefinition.
	simulation := Simulation
		startingWith: definition initialState
		changingBy: definition change
		over: definition stepDelta
		until: definition condition
		informingStepsTo: (SimulationStepPluggableConsumer processWith: [:step | observation process: step ] andWhenFinishedDo: [ observation close]).

	observation play.
	simulationProcess := [simulation run.
	result := simulation result] forkAt: Processor timingPriority - 1  named: 'Simulation'.
	
	[simulationProcess isTerminated and: [observation isTerminated]] whileFalse