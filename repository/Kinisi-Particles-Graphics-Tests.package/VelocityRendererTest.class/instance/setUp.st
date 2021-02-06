running
setUp

	super setUp.
	velocityRenderer := VelocityRenderer with: Color red.
	canvas := RSCanvas new.
	particle := PhysicsTestResource new physicalStateWithNonNullVelocity.
	particleShape := RSEllipse new model: particle.
	canvas add: particleShape