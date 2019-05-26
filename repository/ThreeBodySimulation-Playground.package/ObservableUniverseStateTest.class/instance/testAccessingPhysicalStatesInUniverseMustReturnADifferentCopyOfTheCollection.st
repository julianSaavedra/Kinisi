tests
testAccessingPhysicalStatesInUniverseMustReturnADifferentCopyOfTheCollection

	| physicalStateForParticleA physicalStateForParticleB physicalStates observableUniverseState |
	physicalStateForParticleA := testResource physicalStateForParticleInTheOriginNamed: 'ParticleA'.
	physicalStateForParticleB := testResource physicalStateForParticleNamed: 'ParticleB' in: testResource oneMeterInAllComponentsVector.
	physicalStates := Array with: physicalStateForParticleA with: physicalStateForParticleB.
	observableUniverseState := ObservableUniverseState with: physicalStates.

	self
		assert: observableUniverseState physicalStates
		equals: observableUniverseState physicalStates.

	self deny: observableUniverseState physicalStates == observableUniverseState physicalStates.
	

	