as yet unclassified
interfaceBasedOn: scenario
 
	| processor |
	processor := PluggableObservationInterfaceProcessor
		onStartDo: [ '----- START of Collatz Experiment -----' ]
		processWith: [:observation | 'Index: <1s> --- State: <2s>' expandMacrosWith: observation time asString with: observation value number asString ]
		andWhenFinishedDo: [ '----- END of Collatz Experiment -----' ].
	^ObservationInterface using: processor