actions
startWithoutMonitoring

	| simulation |
	simulation := self newSimulationInformingStepsTo: SimulationStepNullConsumer new.
	simulation run.
	simulation result inspect