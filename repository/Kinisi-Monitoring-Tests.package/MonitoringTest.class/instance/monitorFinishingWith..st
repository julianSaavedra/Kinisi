monitor creation
monitorFinishingWith: finishingAction

	^DataPluggableMonitor
		processWith: [:dataElement | self monitorHasProcessed: dataElement ]
		andWhenFinishedDo: finishingAction