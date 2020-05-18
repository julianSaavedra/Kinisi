private - to be removed
monitoringConsumer

	| canvas monitor renderer |
	monitor := PluggableObservationInterface
		onStartDo: [
			canvas := TRCanvas new.
			canvas openInWindowSized: 400 @ 400 titled: 'Collatz Conjecture'.
			renderer := CollatzConjectureStateRenderer basedOn: displaySettings]
		processWith: [:step | renderer draw: step value on: canvas ].
	
	^SimulationMonitoringConsumer
		for: monitor
		every: (Duration seconds: 1)
		basedOn: ForwardAllPolicyDefinition new