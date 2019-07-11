initialization
initialize

	super initialize.
	particleDrafts := OrderedCollection new.
	nameGenerator := SequentialNameGenerator with: 'Particle'.
	positionGenerator := SequentialTwoDimensionShiftingVectorGenerator with: UnitProvider soleInstance meter
	