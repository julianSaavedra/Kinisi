initialization
initialize

	super initialize.
	initialState := CollatzConjectureState with: 1.
	lastResult := SimulationTotalResult from: #()