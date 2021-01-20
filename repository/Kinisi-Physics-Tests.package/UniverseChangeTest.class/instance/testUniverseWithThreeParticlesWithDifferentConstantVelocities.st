test - constant velocity
testUniverseWithThreeParticlesWithDifferentConstantVelocities

	| oneMeterPerSecondVelocity particleA particleB particleC originalState change finalState |
	oneMeterPerSecondVelocity := self oneMeterPerSecondVelocity.
	particleA := testResource
		physicalStateForParticleNamed: #ParticleA
		in: testResource nullPosition
		with: oneMeterPerSecondVelocity.
	particleB := testResource
		physicalStateForParticleNamed: #ParticleB
		in: (testResource vectorWithAllComponentsInMeterAndAmount: 1)
		with: oneMeterPerSecondVelocity * 2.
	particleC := testResource
		physicalStateForParticleNamed: #ParticleC
		in: (testResource vectorWithAllComponentsInMeterAndAmount: 2)
		with: oneMeterPerSecondVelocity * 10.
	originalState := ObservableUniverseState withAll: { particleA. particleB. particleC}.
	
	change := UniverseChange from: originalState during: testResource oneSecond.

	finalState := change finalState.
	self
		assertPositionOf: particleA
		in: finalState
		is: testResource oneMeterInAllComponentsVector.
	self
		assertPositionOf: particleB
		in: finalState
		is: (testResource vectorWithAllComponentsInMeterAndAmount: 3).
	self
		assertPositionOf: particleC
		in: finalState
		is: (testResource vectorWithAllComponentsInMeterAndAmount: 12)