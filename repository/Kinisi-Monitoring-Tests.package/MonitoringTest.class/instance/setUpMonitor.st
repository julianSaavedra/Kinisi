running
setUpMonitor

	monitor := DataPluggableMonitor
		processWith: [ :dataElement | self monitorHasProcessed: dataElement ]