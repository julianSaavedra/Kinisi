instance creation
onStartDo: startAction processWith: monitoringAction andWhenFinishedDo: finishAction displayingIn: displayDisriminator

	^self new
		initializeOnStartDo: startAction
		action: monitoringAction
		whenFinishedDo: finishAction
		displayingIn: displayDisriminator