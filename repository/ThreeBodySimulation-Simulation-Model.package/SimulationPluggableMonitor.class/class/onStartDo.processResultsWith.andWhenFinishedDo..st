instance creation
onStartDo: startAction processResultsWith: monitoringAction andWhenFinishedDo: finishAction

	^self new
		initializeOnStartDo: startAction
		action: monitoringAction
		whenFinishedDo: finishAction