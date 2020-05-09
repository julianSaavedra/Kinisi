running
setUpMonitor

	monitor := PluggableMonitorInterface
		processWith: [ :dataElement | self monitorHasProcessed: dataElement ]