tests
testUniverseStateContainsSingleStateOfParticleNamedParticleABCAsItWasModifiedThroughGivenParticleObservation

	| universeObservation targetName draft physicalState particleObservation |
	targetName := 'ParticleABC'.
	universeObservation := UniverseObservation new.
	draft := universeObservation newParticleObservationDraft.
	draft save.
	
	particleObservation := universeObservation particleObservations first.
	self deny: particleObservation particleName equals: targetName.
	particleObservation particleName: targetName.
	self assert: particleObservation particleName equals: targetName.

	physicalState := universeObservation universeState physicalStates first.	
	self assert: physicalState particleName equals: targetName
