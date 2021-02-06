instance creation
processWith: consumingAction

	^ self
		onStartDo: [  ]
		processWith: consumingAction
		andWhenFinishedDo: [  ]