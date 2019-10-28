tests
testSimulationPluggableMonitorProcessesValueWithActionGivenInCreation

	| monitor actionWasPerformed |
	monitor := SimulationPluggableMonitor action: [:simulationStepResult | actionWasPerformed := true ].
	actionWasPerformed := false.
	
	monitor process: 1.
	
	self assert: actionWasPerformed