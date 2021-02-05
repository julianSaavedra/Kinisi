change
finalState

	| finalParticleStates particleChange |
	finalParticleStates := OrderedCollection new.
	environment withEachParticleAndNetForceIn: initialState do: [:particle :netForce |
		particleChange := PhysicalStateChange of: particle during: delta perceiving: netForce.
		finalParticleStates add: particleChange finalState ].

	^ObservableUniverseState withAll: finalParticleStates