interface creation
interfaceBasedOn: scenario

	| processor |
	processor := PluggableObservationInterfaceProcessor
		onStartDo: startingAction 
		processWith: observationAction
		andWhenFinishedDo: finishingAction
		choosingDisplayWith: displayEligibility.
	^ObservationInterface using: processor