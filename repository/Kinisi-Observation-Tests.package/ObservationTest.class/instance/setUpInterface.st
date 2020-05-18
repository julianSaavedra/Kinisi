running
setUpInterface

	interface := PluggableObservationInterface
		processWith: [ :dataElement | self interfaceHasProcessed: dataElement ]