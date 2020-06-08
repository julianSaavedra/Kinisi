instance creation
onStartDo: startAction processWith: monitoringAction andWhenFinishedDo: finishAction

	^self new
		initializeOnStartDo: startAction
		action: monitoringAction
		whenFinishedDo: finishAction