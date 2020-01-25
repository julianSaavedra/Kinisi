private - draft creation
positionForDraftTargeting: targetUniverseObservation

	| existingPositions positionGenerator |

	existingPositions := targetUniverseObservation universeState
		particles
		collect: [ :existingParticleState | existingParticleState position ].
	positionGenerator := SequentialTwoDimensionShiftingVectorGenerator
		with: UnitProvider soleInstance meter.
	^ self
		nonExistentPropertyIn: existingPositions
		using: positionGenerator