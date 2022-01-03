tests
testDisplayShowingCollatzSequenceChart

	| interfaceSpec |
	interfaceSpec := CollatzConjectureSequenceChartInterfaceSpec new.
	self
		runExperimentUsing: interfaceSpec
		named: 'CollatzSequenceMonitor'