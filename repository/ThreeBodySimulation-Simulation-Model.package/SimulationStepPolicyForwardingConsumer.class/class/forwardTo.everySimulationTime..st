instance creation
forwardTo: consumer everySimulationTime: simulationPeriod

	^self new
		initializeForwardTo: consumer
		using: (SimulationTimeForwardingPolicy every: simulationPeriod)
