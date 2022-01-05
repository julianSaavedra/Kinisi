interface creation
interfaceStartingWith: startingAction andFinishingWith: finishingAction

	| processor |
	processor := PluggableObservationInterfaceProcessor
		onStartDo: startingAction
		processWith: [:sample | self interfaceHasProcessed: sample ]
		andWhenFinishedDo: finishingAction.
	^ObservationInterface using: processor