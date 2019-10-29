instance creation
processWith: consumingAction

	^self
		processWith: consumingAction
		onStartDo: [ ]
		andWhenFinishedDo: [ ]