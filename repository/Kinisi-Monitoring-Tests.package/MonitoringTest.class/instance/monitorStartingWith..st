monitor creation
monitorStartingWith: startingAction

	^DataPluggableMonitor
		onStartDo: startingAction
		processWith: [:dataElement | self monitorHasProcessed: dataElement ]