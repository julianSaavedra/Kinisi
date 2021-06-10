instance creation
onStartDo: startingAction with: observationAction andWhenFinishedDo: finishingAction choosingDisplayWith: anObject

	^ self new
		intializeOnStartDo: startingAction
		with: observationAction
		andWhenFinishedDo: finishingAction
		choosingDisplayWith: anObject