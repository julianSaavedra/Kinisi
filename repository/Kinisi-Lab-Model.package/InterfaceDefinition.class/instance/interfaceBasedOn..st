interface creation
interfaceBasedOn: scenario

	| processor |
	processor := spec interfaceProcessorBasedOn: scenario.
	^ObservationInterface using: processor 