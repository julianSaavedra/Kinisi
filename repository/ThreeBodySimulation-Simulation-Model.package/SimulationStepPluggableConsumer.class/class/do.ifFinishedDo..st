instance creation
do: consumingAction ifFinishedDo: finishedAction

	^self new
		initializePerform: consumingAction
		ifFinishedDo: finishedAction