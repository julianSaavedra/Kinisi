monitor creation
monitorFinishingWith: finishingAction

	^PluggableMonitorInterface
		processWith: [:dataElement | self monitorHasProcessed: dataElement ]
		andWhenFinishedDo: finishingAction