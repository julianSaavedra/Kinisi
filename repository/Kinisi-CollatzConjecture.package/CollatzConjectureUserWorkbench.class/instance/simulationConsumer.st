private
simulationConsumer

	^self isMonitoringOn
		ifFalse: [ SimulationStepNullConsumer new ]
		ifTrue: [ self monitoringConsumer ]