tests
testInterfaceStartingActionIsNotPerformedWhenObservationIsToldToPlayWhileRunning

	| startActionWasPerformed |
	interface := self interfaceStartingWith: [ startActionWasPerformed := true ].
	observationProcess := KinisiObservation
		on: source
		with: interface
		waiting: delay.

	startActionWasPerformed := false.
	observationProcess play.
	self assert: startActionWasPerformed.
	
	startActionWasPerformed := false.
	observationProcess play.
	self deny: startActionWasPerformed