tests
testEmptyUniverseIsCreatedFromUniverseObservationWithNoParticleObservations

	| emptyUniverseObservation |
	emptyUniverseObservation := UniverseObservation new.
	self assert: emptyUniverseObservation particles isEmpty.
	
	self assert: emptyUniverseObservation universeState particles isEmpty