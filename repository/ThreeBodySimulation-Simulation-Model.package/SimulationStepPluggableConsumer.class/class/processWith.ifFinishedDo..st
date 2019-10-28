instance creation
processWith: consumingAction ifFinishedDo: finishedAction

	^self new
		initializePerform: consumingAction
		ifFinishedDo: finishedAction