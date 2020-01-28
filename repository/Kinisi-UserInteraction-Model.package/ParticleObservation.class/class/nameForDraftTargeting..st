private - draft creation
nameForDraftTargeting: targetUniverseObservation
 
	| existingNames namesGenerator |
	existingNames := targetUniverseObservation particles collect: [:particle | particle particleName ].
	namesGenerator := SequentialNameGenerator with: 'Particle'.
	^self
		nonExistentPropertyIn: existingNames
		using: namesGenerator