initialization
initializeProcessWith: aConsumingAction onStartDo: anStartingAction andWhenFinishedDo: aFinishingAction

	consumingAction := aConsumingAction.
	startingAction := anStartingAction.
	finishingAction := aFinishingAction