not working - simulation model migration
exampleBlueAndRedParticlesSimulationWithMonitoring

	| view universe renderer unitProvider meter second monitor monitoringConsumer simulation |
	unitProvider := UnitProvider soleInstance.
	meter := unitProvider meter.
	second := unitProvider second.
	universe := self universeWithBlueAndRedParticlesOfXKilogramsMovingInOppositeDirections.
	universe scale: (meter with: 1).
	universe turnGridOff.
	renderer := UniverseRenderer basedOn: universe.
	monitor := PluggableObservationInterface
		onStartDo: [
			view := RTView new.
			view canvas color: Color black.
			view openInWindowSized: 1000 @ 1000 titled: 'Red and Blue']
		processWith: [:simulationStepResult |
			view clean.
			renderer drawIn: view basedOn: simulationStepResult value.
			view canvas signalUpdate].
	monitoringConsumer := SimulationMonitoringConsumer for: monitor every: (Duration milliSeconds: 50).
	simulation := Simulation
		startingWith: universe universeState
		changingBy: [:stepDuration :currentState | (UniverseStateChange from: currentState during: stepDuration) finalState ]
		over: (second with: 0.1)
		during: (second with: 100)
		informingStepsTo: monitoringConsumer.

	simulation run