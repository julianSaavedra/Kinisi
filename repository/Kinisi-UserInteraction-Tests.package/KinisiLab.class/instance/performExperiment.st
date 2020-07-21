experiment
performExperiment

	| isRunning observationIsRunning simulation experiment buffer observationProcess observationConsumer simulationProcess labConsumer consumer |
	isRunning := false.
	observationIsRunning := false.
	experiment := workbench experimentDefinition.
	observationConsumer := SimulationStepNullConsumer new.
	experiment withObservationInterfaceDo: [:interface |
		| labInterface |
		labInterface := PluggableObservationInterface
			onStartDo: [ observationIsRunning := true. interface start ]
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
	labConsumer := SimulationStepPluggableConsumer
		processWith: [:step | ]
		andWhenFinishedDo: [:result | experiments add: result].
	consumer := SimulationStepMultipleForwardingConsumer withAll: { labConsumer. observationConsumer }.
	simulation := Simulation
		startingWith: experiment initialState
		changingBy: experiment change
		over: experiment stepDelta
		during: experiment duration
		informingStepsTo: consumer.
	
	simulationProcess := [ simulation run. isRunning := false ] newProcess.
	simulationProcess name: 'Simulation'.
	
	isRunning := true. 
	simulationProcess resume.
	observationProcess ifNotNil: [:observation | observation play ].
	
	[isRunning or: [ observationIsRunning ]] whileTrue