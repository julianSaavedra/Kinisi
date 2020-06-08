action
performExperiment

	| simulation simulationConsumer interface observationProcess buffer canvas renderer |
	simulationConsumer := self isMonitoringOn
		ifFalse: [ SimulationStepNullConsumer new ]
		ifTrue: [
			buffer := Buffer new.
			interface := PluggableObservationInterface
				onStartDo: [
					canvas := TRCanvas new.
					canvas openInWindowSized: 400 @ 400 titled: 'Collatz Conjecture'.
					renderer := CollatzConjectureStateRenderer basedOn: displaySettings]
				processWith: [:step | renderer draw: step value on: canvas ].
		observationProcess := KinisiObservation
				on: (ObservationSource from: buffer)
				with: interface
				waiting: (Duration seconds: 1).
		SimulationStepPluggableConsumer
			processWith: [ :stepResult | buffer store: stepResult ]
			andWhenFinishedDo: [ buffer close ] ].
		
	simulation := Simulation
		startingWith: initialState
		changingBy: [:step :currentState | CollatzConjectureStateChange new finalStateFrom: currentState ]
		over: 1
		until: [:step :currentState | currentState number = 1 ]
		informingStepsTo: simulationConsumer.
	
	observationProcess ifNotNil: [:observation | observation play ].
	simulation run.
		
	lastResult := simulation result