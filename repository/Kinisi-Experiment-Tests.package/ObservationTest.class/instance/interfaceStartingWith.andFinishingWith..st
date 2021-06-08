interface creation
interfaceStartingWith: startingAction andFinishingWith: finishingAction

	^PluggableObservationInterfaceProcessor
		onStartDo: startingAction
		processWith: [:sample | self interfaceHasProcessed: sample ]
		andWhenFinishedDo: finishingAction