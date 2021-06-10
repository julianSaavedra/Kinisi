instance creation
onStartDo: startAction processWith: monitoringAction andWhenFinishedDo: finishAction

	^self
		onStartDo: startAction
		processWith: monitoringAction
		andWhenFinishedDo: finishAction
		connectingDisplayWith: [:displayConnector | displayConnector nullDisplay ]
