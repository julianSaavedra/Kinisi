actions
startWithMonitoring

	| simulation endPointConsumers bufferWriterConsumer transcriptConsumer finalInspectConsumer stopConsumer keepMonitoring buffer reader multipleForwardingConsumer |
	endPointConsumers := OrderedCollection new.
	buffer := Buffer new.
	bufferWriterConsumer := SimulationStepBufferWriterConsumer on: buffer.
	reader := BufferPluggableReader on: buffer withDataDo: [:data | multipleForwardingConsumer process: data].
	 
	Transcript open; clear.
	transcriptConsumer := SimulationStepPluggableConsumer
		processWith: [:simulationStep |
			Transcript show: ('Time: <1s>' expandMacrosWith: simulationStep time asString); cr.
				simulationStep value withComponentsDo: [:physicalState |
				| position measureToStringBlock |
				measureToStringBlock := [:measure | '<1s> <2s>' expandMacrosWith: (measure amount truncateTo: 0.01) asString with: measure unit asString ].
				position := physicalState position.
				Transcript
					tab;
					show: ('Position of <1s> is X= <2s> Y= <3s>' expandMacrosWith: physicalState particleName asString with: (measureToStringBlock value: position x) with: (measureToStringBlock value: position y));
					cr]]
		ifFinishedDo: [
			Transcript
				show: 'Finishing simulation.'; cr;
				show: '----------------------------------------------------------'; cr;
				show: '----------------------------------------------------------'; cr ].
	finalInspectConsumer := SimulationStepPluggableConsumer processWith: [:simulationStep |] ifFinishedDo: [ simulation result inspect ].
	stopConsumer := SimulationStepPluggableConsumer processWith: [:simulationStep | ] ifFinishedDo: [ keepMonitoring := false ].
	endPointConsumers add: transcriptConsumer; add: finalInspectConsumer; add: stopConsumer.
	multipleForwardingConsumer := SimulationStepMultipleFowardingConsumer withAll: endPointConsumers.
	
	simulation := self newSimulationInformingStepsTo: bufferWriterConsumer.
	keepMonitoring := true.
	[[keepMonitoring] whileTrue: [
		(Delay forMilliseconds:500) wait.
		reader read]
		] fork.

	[simulation run] fork