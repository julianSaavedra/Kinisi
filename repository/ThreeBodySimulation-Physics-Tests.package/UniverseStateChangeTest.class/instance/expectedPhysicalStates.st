tests
expectedPhysicalStates

	| gValue expectedStateA expectedStateB |
	gValue := 6.674e-11.
	expectedStateA := testResource
		physicalStateForParticleNamed: 'ParticleA'
		with: testResource twoKilograms
		in: (testResource vectorWithXOnlyWithMeters: gValue / 2)
		withVelocity: (testResource velocityVectorWithXComponentOnlyWithAmount: gValue)
		withAcceleration: (testResource accelerationVectorWithXComponentOnlyWithAmount: gValue).
	expectedStateB := testResource
		physicalStateForParticleNamed: 'ParticleB'
		with: testResource oneKilogram
		in: (testResource vectorWithXOnlyWithMeters: 1 - gValue)
		withVelocity: (testResource velocityVectorWithXComponentOnlyWithAmount: 2 * gValue negated)
		withAcceleration: (testResource accelerationVectorWithXComponentOnlyWithAmount: 2 * gValue negated).

	^Array with: expectedStateA with: expectedStateB
	