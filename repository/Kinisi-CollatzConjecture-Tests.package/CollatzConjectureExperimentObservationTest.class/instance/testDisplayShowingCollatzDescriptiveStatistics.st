tests
testDisplayShowingCollatzDescriptiveStatistics

	| interfaceSpec |
	interfaceSpec := CollatzConjectureDescriptiveStatisticsInterfaceSpec new.
	self
		runExperimentUsing: interfaceSpec
		named: 'Descriptive Statistics'