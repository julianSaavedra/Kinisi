initialization
initialize

	super initialize.
	initialState := CollatzConjectureState with: 1.
	displaySettings := CollatzConjectureDisplaySettings default.
	monitoringSettings := CollatzConjectureMonitoringSettings default.