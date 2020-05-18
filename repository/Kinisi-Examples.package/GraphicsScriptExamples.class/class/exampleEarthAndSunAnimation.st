examples - animation
exampleEarthAndSunAnimation

	| view viewSize day simulation timeDelta duration monitor monitoringConsumer universe renderer |
	view := RTView new.
	viewSize := 1000 @ 1000.
	view openInWindowSized: viewSize titled: 'Earth and Sun'.
	view canvas camera focusOnCenter.

	universe := self earthAndSunInitialUniverseObservation.
	universe turnGridOff.
	universe scale: (UnitProvider soleInstance kilometer with: 10e6).
	renderer := UniverseRenderer basedOn: universe.
	monitor := PluggableObservationInterface
		processWith: [:simulationStepResult |
			view clean.
			renderer drawIn: view basedOn: simulationStepResult value ].
	monitoringConsumer := SimulationMonitoringConsumer
		for: monitor
		every: (Duration milliSeconds: 40)
		basedOn: ForwardAllPolicyDefinition new.
		
	day := UnitProvider soleInstance day.
	timeDelta := day with: 1.
	duration := day with: 365.
	simulation := Simulation
		startingWith: universe universeState
		changingBy: [:stepDuration :currentState | (UniverseStateChange from: currentState during: stepDuration) finalState ]
		over: timeDelta
		during: duration
		informingStepsTo: monitoringConsumer.

	simulation run