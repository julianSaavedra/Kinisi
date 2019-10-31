instance creation
processWith: consumingAction andWhenFinishedDo: finishingAction

	^ self
		onStartDo: [  ]
		processWith: consumingAction
		andWhenFinishedDo: finishingAction