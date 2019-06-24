tests
testNetForceByOneParticleIsEqualAsTheForceCausedByThatParticle

	| aPhysicalState anotherPhysicalState netForce expectedNetForce |
	aPhysicalState := self physicalStateForParticleA.
	anotherPhysicalState := self physicalStateForParticleB.
	netForce := NetForce
		overParticleWith: aPhysicalState
		causedByParticlesWithAll: (Array with: anotherPhysicalState).

	expectedNetForce := self forceOverParticleWith: aPhysicalState causedByParticleWith: anotherPhysicalState.
	self
		assert: netForce result
		equals: expectedNetForce