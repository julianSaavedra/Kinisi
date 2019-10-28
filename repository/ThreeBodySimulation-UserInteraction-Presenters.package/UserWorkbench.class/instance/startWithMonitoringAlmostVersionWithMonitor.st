actions
startWithMonitoringAlmostVersionWithMonitor

	| simulation consumers bufferWriterConsumer transcriptMonitor finalInspectConsumer stopMonitoringConsumer buffer multipleForwardingConsumer monitoringProcess |
	consumers := OrderedCollection new.
	transcriptMonitor := self transcriptMonitor.
	buffer := Buffer new.
	monitoringProcess := SimulationMonitoringProcess
		from: buffer
		to: transcriptMonitor
		every: (Duration milliSeconds: 500).
	bufferWriterConsumer := SimulationStepBufferWriterConsumer on: buffer.
	consumers add: bufferWriterConsumer.

	finalInspectConsumer := SimulationStepPluggableConsumer
		processWith: [ :simulationStep |  ]
		ifFinishedDo: [ :totalResult | totalResult inspect ].
	consumers add: finalInspectConsumer.
	stopMonitoringConsumer := SimulationStepPluggableConsumer
		processWith: [ :simulationStep |  ]
		ifFinishedDo: [ monitoringProcess terminate ].
	consumers add: stopMonitoringConsumer.

	multipleForwardingConsumer := SimulationStepMultipleForwardingConsumer
		withAll: consumers.

	simulation := self
		newSimulationInformingStepsTo: multipleForwardingConsumer.

	monitoringProcess start.
	[ simulation run ] fork