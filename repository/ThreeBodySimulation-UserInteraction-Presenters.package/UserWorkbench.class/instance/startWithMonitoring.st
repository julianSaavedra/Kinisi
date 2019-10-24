actions
startWithMonitoring

	| simulation endPointConsumers stepConsumer transcriptConsumer finalInspectConsumer stopConsumer keepMonitoring buffer reader |
	endPointConsumers := OrderedCollection new.
	buffer := Buffer new.
	reader := BufferPluggableReader on: buffer withDataDo: [:data | endPointConsumers do: [:consumer | consumer process: data ]].
	stepConsumer := SimulationStepBufferWriterConsumer on: buffer.
	 
	Transcript open; clear.
	transcriptConsumer := SimulationStepPluggableConsumer
		do: [:simulationStep |
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
	finalInspectConsumer := SimulationStepPluggableConsumer do: [:simulationStep |] ifFinishedDo: [ simulation result inspect ].
	stopConsumer := SimulationStepPluggableConsumer do: [:simulationStep | ] ifFinishedDo: [ keepMonitoring := false ].
	endPointConsumers add: transcriptConsumer; add: finalInspectConsumer; add: stopConsumer.
	
	simulation := self newSimulationInformingStepsTo: stepConsumer.
	keepMonitoring := true.
	[[keepMonitoring] whileTrue: [
		(Delay forMilliseconds:500) wait.
		reader read]
		] fork.

	[simulation run] fork