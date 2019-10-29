instance creation
processWith: consumingAction andWhenFinishedDo: finishingAction

	^self processWith: consumingAction onStartDo: [ ] andWhenFinishedDo: finishingAction