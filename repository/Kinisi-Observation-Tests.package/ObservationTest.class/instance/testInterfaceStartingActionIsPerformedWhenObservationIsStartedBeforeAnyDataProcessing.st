tests
testInterfaceStartingActionIsPerformedWhenObservationIsStartedBeforeAnyDataProcessing

	| monitoring startActionWasPerformed |
	interface := self interfaceStartingWith: [ startActionWasPerformed := true ].
	monitoring := KinisiObservation
		on: source
		with: interface
		waiting: delay.

	startActionWasPerformed := false.
	monitoring play.
	
	self assert: startActionWasPerformed.
	monitoring terminate