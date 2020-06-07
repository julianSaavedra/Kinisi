tests
testObservationProcessAllStepsAndStatesProducedBySimulation
	| simulation observationConsumer interface observationProcess observationHasFinished observations buffer |
	buffer := Buffer new.
	observationConsumer := SimulationStepPluggableConsumer
		processWith: [ :stepResult | buffer store: stepResult ]
		andWhenFinishedDo: [ buffer close ].
	simulation := self simulationInforming: observationConsumer.
	interface := PluggableObservationInterface
		onStartDo: [ observations := OrderedCollection new ]
		processWith: [ :anObservation | observations add: anObservation ]
		andWhenFinishedDo: [ observationHasFinished := true ].
	observationProcess := self processObserving: buffer for: interface.
	simulation run.
	observationHasFinished := false.
	observationProcess play.
	[ [ observationHasFinished ] whileFalse ]
		valueWithin: (Duration seconds: 2)
		onTimeout: [ self fail ].
	self assertResultsOf: simulation areIn: observations