tests
oneKilogramAndNullPropertiesPhysicalStateForParticleNamed: particleName

	^testResource
		physicalStateForParticleNamed: particleName
		with: testResource oneKilogram
		in: testResource nullPosition
		withVelocity: testResource nullVelocity
		withAcceleration: testResource nullAcceleration