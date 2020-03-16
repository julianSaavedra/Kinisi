private - particle creation
positionForNewParticle

	| existingPositions positionGenerator |
	existingPositions := self particles 	collect: [:existingParticle | existingParticle position ].
	positionGenerator := SequentialTwoDimensionShiftingVectorGenerator with: UnitProvider soleInstance meter.
	^self
		nonExistentPropertyIn: existingPositions
		using: positionGenerator