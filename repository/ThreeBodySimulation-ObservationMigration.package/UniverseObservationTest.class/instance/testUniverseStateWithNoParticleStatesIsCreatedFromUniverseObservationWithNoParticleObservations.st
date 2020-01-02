tests
testUniverseStateWithNoParticleStatesIsCreatedFromUniverseObservationWithNoParticleObservations

	| emptyUniverseObservation |
	emptyUniverseObservation := UniverseObservation new.
	self assert: emptyUniverseObservation particleObservations isEmpty.
	
	self assert: emptyUniverseObservation universeState physicalStates isEmpty