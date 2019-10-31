examples - grid - animation
exampleBlueAndRedParticlesSimulationWithMonitoring

	| view gridConfiguration universeDraft renderer unitProvider meter second monitor monitoringConsumer simulation |
	unitProvider := UnitProvider soleInstance.
	meter := unitProvider meter.
	second := unitProvider second.
	universeDraft := self universeDraftBlueAndRedParticlesOfXKilogramsMovingInOppositeDirections.
	gridConfiguration := GridConfiguration withColor: Color gray size: 50 andDistance: (meter with: 1).
	renderer := UniverseRenderer basedOn: universeDraft and: gridConfiguration.
	monitor := SimulationPluggableMonitor
		onStartDo: [
			view := RTView new.
			view canvas color: Color black.
			view openInWindowSized: 1000 @ 1000 titled: 'Red and Blue']
		processResultsWith: [:simulationStepResult |
			view clean.
			renderer drawIn: view basedOn: simulationStepResult value.
			"GridRenderer new drawIn: view basedOn: gridConfiguration."
			view canvas signalUpdate.
			"Transcript show: simulationStepResult time asString"].
	monitoringConsumer := SimulationMonitoringConsumer for: monitor every: (Duration milliSeconds: 50).
	simulation := Simulation
		startingWith: universeDraft asUniverseState
		changingBy: [:stepDuration :currentState | (UniverseStateChange from: currentState during: stepDuration) finalState ]
		over: (second with: 0.1)
		during: (second with: 100)
		informingStepsTo: monitoringConsumer.

	simulation run