interface creation
interfaceStartingWith: startingAction andFinishingWith: finishingAction

	^PluggableObservationInterface
		onStartDo: startingAction
		processWith: [:sample | self interfaceHasProcessed: sample ]
		andWhenFinishedDo: finishingAction