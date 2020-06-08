initialization
initializeFor: monitor every: period basedOn: forwardingPolicyDefinition

	| bufferWriterConsumer |
	buffer := Buffer new.
	bufferWriterConsumer := SimulationStepBufferWriterConsumer on: buffer.
	forwarder := SimulationStepPolicyForwardingConsumer forwardTo: bufferWriterConsumer basedOn: forwardingPolicyDefinition.
	monitoringProcess := SimulationMonitoringProcess
		from: buffer
		to: monitor
		every: period