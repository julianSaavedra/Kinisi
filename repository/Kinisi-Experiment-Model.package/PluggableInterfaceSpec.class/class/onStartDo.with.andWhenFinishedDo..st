instance creation
onStartDo: startingAction with: observationAction andWhenFinishedDo: finishingAction

	^self new
		intializeOnStartDo: startingAction
		with: observationAction
		andWhenFinishedDo: finishingAction