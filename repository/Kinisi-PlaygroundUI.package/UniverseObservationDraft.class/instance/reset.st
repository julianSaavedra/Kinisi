actions
reset

	particleDrafts := OrderedCollection new.
	nameGenerator := SequentialNameGenerator with: 'Particle'.
	positionGenerator := SequentialTwoDimensionShiftingVectorGenerator with: UnitProvider soleInstance meter