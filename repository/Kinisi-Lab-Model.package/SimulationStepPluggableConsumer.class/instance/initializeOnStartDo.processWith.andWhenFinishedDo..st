initialization
initializeOnStartDo: anStartingAction processWith: aConsumingAction andWhenFinishedDo: aFinishingAction

	consumingAction := aConsumingAction.
	startingAction := anStartingAction.
	finishingAction := aFinishingAction