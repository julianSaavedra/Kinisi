tests
testUniverseStateContainsSingleStateOfParticleWithMassTwoKilogramsAsItWasModifiedThroughGivenParticleObservation

	| universeObservation targetMass draft physicalState particleObservation |
	targetMass := physicsResource twoKilograms.
	universeObservation := UniverseObservation new.
	draft := universeObservation newParticleObservationDraft.
	draft save.
	
	particleObservation := universeObservation particleObservations first.
	self deny: particleObservation mass equals: targetMass.
	particleObservation mass: targetMass.
	self assert: particleObservation mass equals: targetMass.

	physicalState := universeObservation universeState physicalStates first.	
	self assert: physicalState mass equals: targetMass
