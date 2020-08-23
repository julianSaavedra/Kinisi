actions
startWithMonitoringAlmostVersionWithMonitor

	| simulation consumers transcriptMonitor finalInspectConsumer monitoringConsumer multipleForwardingConsumer |

	consumers := OrderedCollection new.
	transcriptMonitor := self transcriptInterface.
	monitoringConsumer := SimulationMonitoringConsumer
		for: transcriptMonitor
		every: (Duration milliSeconds: 500).
	consumers add: monitoringConsumer.

	finalInspectConsumer := SimulationStepPluggableConsumer
		onStartDo: [  ]
		processWith: [ :simulationStep |  ]
		andWhenFinishedDo: [ :totalResult | totalResult inspect ].
	consumers add: finalInspectConsumer.

	multipleForwardingConsumer := SimulationStepMultipleForwardingConsumer
		withAll: consumers.

	simulation := self
		newSimulationInformingStepsTo: multipleForwardingConsumer.

	[ simulation run ] fork