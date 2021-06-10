interface creation
interfaceBasedOn: scenario

	| processor |
	processor := CollatzConjectureSequenceChartInterfaceProcessor basedOn: scenario.	
	^ObservationInterface using: processor