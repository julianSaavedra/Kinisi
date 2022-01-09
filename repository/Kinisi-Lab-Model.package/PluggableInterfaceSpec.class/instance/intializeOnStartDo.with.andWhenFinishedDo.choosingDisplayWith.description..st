initialization
intializeOnStartDo: aStartingAction with: anObservationAction andWhenFinishedDo: aFinishingAction choosingDisplayWith: aDisplayEligibility description: aDescription  

	startingAction := aStartingAction.
	observationAction := anObservationAction.
	finishingAction := aFinishingAction.
	displayEligibility := aDisplayEligibility.
	description := aDescription