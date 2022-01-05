interface creation
interfaceProcessorBasedOn: scenario

	^PluggableObservationInterfaceProcessor
		onStartDo: startingAction 
		processWith: observationAction
		andWhenFinishedDo: finishingAction
		choosingDisplayWith: displayEligibility