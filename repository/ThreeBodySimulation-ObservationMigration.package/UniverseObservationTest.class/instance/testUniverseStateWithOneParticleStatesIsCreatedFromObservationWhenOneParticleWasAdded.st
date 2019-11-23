tests
testUniverseStateWithOneParticleStatesIsCreatedFromObservationWhenOneParticleWasAdded

	| universeObservation particleObservation physicalStates |
	universeObservation := UniverseObservation new.
	particleObservation := ParticleObservation forParticleNamed: 'ParticleA'.
		
	universeObservation add: particleObservation.
	
	physicalStates := universeObservation universeState physicalStates.
	self assert: physicalStates size equals: 1.
	self assert: (physicalStates includes: particleObservation physicalState)