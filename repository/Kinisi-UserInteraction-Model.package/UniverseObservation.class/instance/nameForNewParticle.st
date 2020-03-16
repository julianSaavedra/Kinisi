private - particle creation
nameForNewParticle

	| existingNames namesGenerator |
	existingNames := self particles collect: [:particle | particle particleName ].
	namesGenerator := SequentialNameGenerator with: 'Particle'.
	^self
		nonExistentPropertyIn: existingNames
		using: namesGenerator