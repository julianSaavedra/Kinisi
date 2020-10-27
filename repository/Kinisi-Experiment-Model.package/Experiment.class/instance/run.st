running
run

	| simulation observation consumer |
	observation := ObservationController basedOn: definition.
	consumer := SimulationStepPluggableConsumer
		processWith: [:step | observation process: step ]
		andWhenFinishedDo: [ observation close ].

	simulation := Simulation basedOn: definition.
	
	"simulationProcess := [simulation runInforming:consumer.
	result := simulation result] newProcess.
	simulationProcess name: 'Simulation'.
	simulationProcess priority: Processor activePriority - 2.
	simulationProcess resume."
	simulation runInforming:consumer.
	result := simulation result.
	observation play.
	"[observation isTerminated] whileFalse"