instance creation
onStartDo: finishingAction with: startingAction andWhenFinishedDo: observationAction choosingDisplayWith: displayEligibility description: description

	self assertValidDescription: description.
	^self new
		  intializeOnStartDo: startingAction
		  with: observationAction
		  andWhenFinishedDo: finishingAction
		  choosingDisplayWith: displayEligibility
		  description: description