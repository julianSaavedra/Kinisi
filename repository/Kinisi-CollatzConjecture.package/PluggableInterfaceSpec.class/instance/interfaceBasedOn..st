accessing
interfaceBasedOn: anObject

	^PluggableObservationInterface
		processWith: observationAction
		andWhenFinishedDo: finishingAction