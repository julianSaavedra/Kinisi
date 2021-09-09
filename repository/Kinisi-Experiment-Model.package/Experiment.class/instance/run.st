running
run

	| simulation consumer |
	consumer := SimulationStepPluggableConsumer
		onStartDo: [ status := RunningExperimentStatus new ]
		processWith: [:step | observation process: step ]
		andWhenFinishedDo: [ observation close. 	status := EndedExperimentStatus new].

	simulation := Simulation basedOn: definition.
	
	"simulationProcess := [simulation runInforming:consumer.
	result := simulation result] newProcess.
	simulationProcess name: 'Simulation'.
	simulationProcess priority: Processor activePriority - 2.
	simulationProcess resume."
	simulation runInforming:consumer.
	result := simulation result.
	lab recordResultOf: self.
	observation play.
	"[observation isTerminated] whileFalse"