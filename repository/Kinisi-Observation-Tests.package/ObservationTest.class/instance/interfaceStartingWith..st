interface creation
interfaceStartingWith: startingAction

	^PluggableObservationInterface
		onStartDo: startingAction
		processWith: [:dataElement | self interfaceHasProcessed: dataElement ]