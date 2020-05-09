monitor creation
monitorStartingWith: startingAction

	^PluggableMonitorInterface
		onStartDo: startingAction
		processWith: [:dataElement | self monitorHasProcessed: dataElement ]