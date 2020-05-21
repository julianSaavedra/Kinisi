support
interfaceHasProcessed: dataElement

	observedData add: dataElement.
	pendingObservations := pendingObservations copyWithout: dataElement