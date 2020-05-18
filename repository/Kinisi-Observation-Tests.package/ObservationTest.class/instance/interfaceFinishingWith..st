interface creation
interfaceFinishingWith: finishingAction

	^PluggableObservationInterface
		processWith: [:dataElement | self interfaceHasProcessed: dataElement ]
		andWhenFinishedDo: finishingAction