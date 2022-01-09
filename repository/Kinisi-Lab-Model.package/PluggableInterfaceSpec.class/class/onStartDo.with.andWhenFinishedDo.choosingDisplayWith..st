instance creation
onStartDo: startingAction with: observationAction andWhenFinishedDo: finishingAction choosingDisplayWith: displayEligibility

	^self
		  onStartDo: finishingAction
		  with: startingAction
		  andWhenFinishedDo: observationAction
		  choosingDisplayWith: displayEligibility
		  description: 'No description provided'