tests
testNetForceByTwoParticlesIsEqualToTheSumOfForcesCausedByEachOfThem

	| aPhysicalState forceCausingParticlesPhysicalStates expectedNetForce netForce |
	aPhysicalState := self physicalStateForParticleA.
	forceCausingParticlesPhysicalStates := Array with: self physicalStateForParticleB with: self physicalStateForParticleC.
	netForce := NetForce
		overParticleWith: aPhysicalState
		causedByParticlesWithAll: forceCausingParticlesPhysicalStates.

	expectedNetForce := self forceOverParticleWith: aPhysicalState causedByParticlesWithAll: forceCausingParticlesPhysicalStates.
	self
		assert: netForce result
		equals: expectedNetForce