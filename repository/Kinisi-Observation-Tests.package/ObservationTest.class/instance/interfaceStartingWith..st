interface creation
interfaceStartingWith: startingAction

	^PluggableObservationInterface
		onStartDo: startingAction
		processWith: [:sample | self interfaceHasProcessed: sample ]