initialization
initialize

	super initialize.
	initialState := CollatzConjectureState with: 1.
	lastResult := SimulationTotalResult from: #().
	displaySettings := CollatzConjectureDisplaySettings default.
	monitoringSettings := CollatzConjectureMonitoringSettings default.