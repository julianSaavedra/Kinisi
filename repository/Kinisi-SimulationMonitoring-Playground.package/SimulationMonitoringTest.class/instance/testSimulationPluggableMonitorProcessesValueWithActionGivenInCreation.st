tests - simulation coupled
testSimulationPluggableMonitorProcessesValueWithActionGivenInCreation

	| monitor timesActionWasPerformed monitoringConsumer simulation |
	monitor := DataPluggableMonitor
		processWith: [:simulationStepResult | timesActionWasPerformed := timesActionWasPerformed + 1 ]
		andWhenFinishedDo: [ self monitoringHasFinished ].
	monitoringConsumer := SimulationMonitoringConsumer for: monitor every: (Duration milliSeconds: 40).
	simulation := self
		simulationGeneratingFrom: 0 to: 2
		informingStepsTo: monitoringConsumer.

	timesActionWasPerformed := 0.
	self waitUntilMonitoringFinishesWhenRunning: simulation.

	self assert: timesActionWasPerformed equals: 3