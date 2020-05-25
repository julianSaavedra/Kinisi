tests
testInterfaceStartingActionIsPerformedWhenObservationIsStartedForTheFirstTimeBeforeAnySampleProcessing

	| startActionWasPerformed |
	interface := self interfaceStartingWith: [ startActionWasPerformed := true ].
	observationProcess := KinisiObservation
		on: source
		with: interface
		waiting: delay.

	startActionWasPerformed := false.
	observationProcess play.
	
	self assert: startActionWasPerformed.
	self assertEmpty: processedSamples