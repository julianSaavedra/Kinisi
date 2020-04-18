instance creation
processResultsWith: monitoringAction andWhenFinishedDo: finishAction

	^self onStartDo: [] processResultsWith: monitoringAction andWhenFinishedDo: finishAction