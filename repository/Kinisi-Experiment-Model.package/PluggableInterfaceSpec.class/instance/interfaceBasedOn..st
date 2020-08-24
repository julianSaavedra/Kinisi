accessing
interfaceBasedOn: scenario

	^PluggableObservationInterface
		onStartDo: startingAction 
		processWith: observationAction
		andWhenFinishedDo: finishingAction