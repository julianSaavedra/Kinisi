instance creation
onStartDo: startingAction with: observationAction andWhenFinishedDo: finishingAction choosingDisplayWith: displayEligibility

	^self new
		intializeOnStartDo: startingAction
		with: observationAction
		andWhenFinishedDo: finishingAction
		choosingDisplayWith: displayEligibility