tests
testUniverseObservationBackgroundIsChangedToBlue

	| universeObservation |
	universeObservation := UniverseObservation new.
	blue := Color blue.
	self deny: universeObservation background equals: blue.
	
	universeObservation background: blue.
	
	self assert: universeObservation background equals: blue