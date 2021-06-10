instance creation
onStartDo: startingAction with: observationAction andWhenFinishedDo: finishingAction

	^self
		onStartDo: startingAction
		with: observationAction
		andWhenFinishedDo: finishingAction
		choosingDisplayWith: [ NullDisplay new ]