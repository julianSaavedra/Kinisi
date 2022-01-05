tests
testInterfaceStartingActionIsPerformedWhenObservationIsStartedForTheFirstTimeBeforeAnySampleProcessing

	| startActionWasPerformedBeforeAnyObservation interface |
	interface := self interfaceStartingWith: [
		startActionWasPerformedBeforeAnyObservation := interfaceProcessedSamples isEmpty ].
	observationProcess := KinisiObservation
		on: source
		with: {interface}
		waiting: delay.

	startActionWasPerformedBeforeAnyObservation := false.
	observationProcess play.
	
	self assert: startActionWasPerformedBeforeAnyObservation