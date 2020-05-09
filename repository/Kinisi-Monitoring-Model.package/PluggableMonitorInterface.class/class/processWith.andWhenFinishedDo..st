instance creation
processWith: monitoringAction andWhenFinishedDo: finishAction

	^self onStartDo: [] processWith: monitoringAction andWhenFinishedDo: finishAction