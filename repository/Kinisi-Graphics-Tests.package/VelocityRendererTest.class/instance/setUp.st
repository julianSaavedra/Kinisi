running
setUp

	super setUp.
	velocityRenderer := VelocityRenderer with: Color red.
	view := RTView new.
	particle := PhysicsTestResource new physicalStateWithNonNullVelocity.
	particleElement := RTEllipse new elementOn: particle.
	view add: particleElement