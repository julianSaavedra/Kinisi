running
run

	| simulation observationIsRunning observationConsumer observationProcess |
	observationConsumer := SimulationStepNullConsumer new.
	definition withObservationInterfaceDo: [:interface |
		| labInterface buffer |
		labInterface := PluggableObservationInterface
			onStartDo: [ interface start ]
			processWith: [:observation | interface process: observation ]
			andWhenFinishedDo: [ interface terminate. observationIsRunning := false ].
		buffer := Buffer new.
		observationProcess := KinisiObservation
			on: (ObservationSource from: buffer)
			with: labInterface
			waiting: (Duration milliSeconds: 100).
		observationConsumer := SimulationStepPluggableConsumer
			processWith: [ :stepResult | buffer store: stepResult ]
			andWhenFinishedDo: [ buffer close ].
		].
	simulation := Simulation
		startingWith: definition initialState
		changingBy: definition change
		over: definition stepDelta
		during: definition duration
		informingStepsTo: observationConsumer.
	
	simulation run.
	result := simulation result.
	observationProcess ifNotNil: [:observation |
		observation play.
		observationIsRunning := true.
		[observationIsRunning] whileTrue ]