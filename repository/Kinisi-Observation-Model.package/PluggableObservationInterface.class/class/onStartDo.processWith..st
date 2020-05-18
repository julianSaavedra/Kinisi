instance creation
onStartDo: startAction processWith: monitoringAction

	^self onStartDo: startAction processWith: monitoringAction andWhenFinishedDo: []
