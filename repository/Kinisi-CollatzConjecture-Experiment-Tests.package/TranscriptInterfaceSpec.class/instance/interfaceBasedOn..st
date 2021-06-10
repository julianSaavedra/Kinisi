interface creation
interfaceBasedOn: scenario
 
	| processor |
	processor := PluggableObservationInterfaceProcessor
		onStartDo: [:display | display show: '----- START of Collatz Experiment -----' ]
		processWith: [:observation :display |
			| result |
			result := 'Index: <1s> --- State: <2s>' expandMacrosWith: observation time asString with: observation value number asString .
			display show: result ]
		andWhenFinishedDo: [:display | display show: '----- END of Collatz Experiment -----' ]
		displayingIn: [:displayConnector | displayConnector displayForTranscript ].
	^ObservationInterface using: processor