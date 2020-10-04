running
setUp

	super setUp.
	velocityRenderer := VelocityRenderer with: Color red.
	view := RSCanvas new.
	particle := PhysicsTestResource new physicalStateWithNonNullVelocity.
	particleElement := RSEllipse new model: particle.
	view add: particleElement