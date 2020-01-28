instance creation
onStartDo: startingAction processWith: consumingAction andWhenFinishedDo: finishingAction

	^ self new
		initializeOnStartDo: startingAction
		processWith: consumingAction
		andWhenFinishedDo: finishingAction