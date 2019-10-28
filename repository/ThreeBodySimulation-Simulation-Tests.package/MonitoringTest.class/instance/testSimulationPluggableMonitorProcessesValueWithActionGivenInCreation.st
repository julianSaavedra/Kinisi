tests
testSimulationPluggableMonitorProcessesValueWithActionGivenInCreation

	| monitor actionWasPerformed |
	monitor := SimulationPluggableMonitor processResultsWith: [:simulationStepResult | actionWasPerformed := true ].
	actionWasPerformed := false.
	
	monitor process: 1.
	
	self assert: actionWasPerformed