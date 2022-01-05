instance creation
onStartDo: startAction processWith: monitoringAction andWhenFinishedDo: finishAction choosingDisplayWith: displayEligibility

	^self new
		initializeOnStartDo: startAction
		action: monitoringAction
		whenFinishedDo: finishAction
		choosingDisplayWith: displayEligibility