instance creation
processWith: consumingAction onStartDo: startingAction andWhenFinishedDo: finishingAction

	^ self new
		initializeProcessWith: consumingAction
		onStartDo: startingAction
		andWhenFinishedDo: finishingAction