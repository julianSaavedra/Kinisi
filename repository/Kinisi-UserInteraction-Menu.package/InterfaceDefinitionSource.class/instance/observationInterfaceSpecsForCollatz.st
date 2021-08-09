definition - all
observationInterfaceSpecsForCollatz

	^Array
		with: self transcriptDefinition
		with: self animationDefinition
		with: (InterfaceDefinition named: 'CollatzSequenceMonitor' with: CollatzConjectureSequenceChartInterfaceSpec new)
		with: (InterfaceDefinition named: 'CollatzStatisticsMonitor' with: CollatzConjectureDescriptiveStatisticsInterfaceSpec new)