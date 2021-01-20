test objects - gravitational
originalPhysicalStates

	| originalStateA originalStateB |
	originalStateA := testResource
		physicalStateForParticleNamed: 'ParticleA'
		with: testResource twoKilograms
		in: testResource nullPosition.
	originalStateB := testResource
		physicalStateForParticleNamed: #ParticleB
		with: testResource oneKilogram
		in: testResource oneMeterInXVector.

	^Array with: originalStateA with: originalStateB