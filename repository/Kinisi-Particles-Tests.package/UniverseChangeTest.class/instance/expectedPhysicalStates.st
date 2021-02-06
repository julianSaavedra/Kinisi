test objects - gravitational
expectedPhysicalStates

	| gValue expectedStateA expectedStateB |
	gValue := 6.674e-11.
	expectedStateA := testResource
		particleNamed: 'ParticleA'
		with: testResource twoKilograms
		in: (testResource vectorWithXOnlyWithMeters: gValue / 2)
		withVelocity: (testResource velocityVectorWithXComponentOnlyWithAmount: gValue)
		withAcceleration: (testResource accelerationVectorWithXComponentOnlyWithAmount: gValue).
	expectedStateB := testResource
		particleNamed: 'ParticleB'
		with: testResource oneKilogram
		in: (testResource vectorWithXOnlyWithMeters: 1 - gValue)
		withVelocity: (testResource velocityVectorWithXComponentOnlyWithAmount: 2 * gValue negated)
		withAcceleration: (testResource accelerationVectorWithXComponentOnlyWithAmount: 2 * gValue negated).

	^Array with: expectedStateA with: expectedStateB
	