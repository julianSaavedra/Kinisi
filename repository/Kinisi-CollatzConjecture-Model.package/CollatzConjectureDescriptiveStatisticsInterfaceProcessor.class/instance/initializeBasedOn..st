initialization
initializeBasedOn: scenario

	renderer := CollatzConjectureDescriptiveStatisticsRenderer basedOn: scenario.
	statsCollector := CollatzConjectureDescriptiveStatisticsCollector new