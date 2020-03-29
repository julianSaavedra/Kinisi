test - visual settings
testUniverseObservationGridColorIsChangedToBlue

	| universeObservation blue |
	universeObservation := UniverseObservation new.
	blue := Color blue.
	self deny: universeObservation gridColor equals: blue.
	
	universeObservation gridColor: blue.
	
	self assert: universeObservation gridColor equals: blue