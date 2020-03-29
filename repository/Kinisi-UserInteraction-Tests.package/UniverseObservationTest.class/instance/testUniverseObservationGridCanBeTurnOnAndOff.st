test - visual settings
testUniverseObservationGridCanBeTurnOnAndOff

	| universeObservation |
	universeObservation := UniverseObservation new.
	self assert: universeObservation isGridVisible.
	
	universeObservation turnGridOff.
	
	self deny: universeObservation isGridVisible.
		
	universeObservation turnGridOn.

	self assert: universeObservation isGridVisible