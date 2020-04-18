private
simulationConsumer

	^self isMonitoringOn
		ifFalse: [ SimulationStepNullConsumer new ]
		ifTrue: [ SimulationMonitoringConsumer for: monitoringSettings monitors first every: (Duration seconds: 2) ]