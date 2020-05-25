interface creation
interfaceFinishingWith: finishingAction

	^PluggableObservationInterface
		processWith: [:sample | self interfaceHasProcessed: sample ]
		andWhenFinishedDo: finishingAction