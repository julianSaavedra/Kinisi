instance creation
forwardTo: consumer every: amountOfPackages

	^self new
		initializeForwardTo: consumer
		using: (SimulationPackagesForwardingPolicy every: amountOfPackages)
