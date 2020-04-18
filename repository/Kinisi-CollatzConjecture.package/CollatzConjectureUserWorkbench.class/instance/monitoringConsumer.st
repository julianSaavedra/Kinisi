private - to be removed
monitoringConsumer


	| canvas monitor renderer |
	monitor := SimulationPluggableMonitor
		onStartDo: [
			canvas := TRCanvas new.
			canvas openInWindowSized: 400 @ 400 titled: 'Collatz Conjecture'.
			renderer := CollatzConjectureStateRenderer basedOn: displaySettings]
		processResultsWith: [:step | 	renderer draw: step value on: canvas ]
		andWhenFinishedDo: [].
	
	^SimulationMonitoringConsumer
		for: monitor
		every: (Duration seconds: 1)
		basedOn: ForwardAllPolicyDefinition new