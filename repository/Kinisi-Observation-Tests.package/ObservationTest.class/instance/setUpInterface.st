running
setUpInterface

	interface := PluggableObservationInterface
		processWith: [:sample | self interfaceHasProcessed: sample ]