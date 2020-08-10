instance creation
with: observationAction andWhenFinishedDo: finishingAction

	^self new
		intializeWith: observationAction
		andWhenFinishedDo: finishingAction 