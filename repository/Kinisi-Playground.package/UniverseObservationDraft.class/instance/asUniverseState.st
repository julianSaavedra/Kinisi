conversion
asUniverseState

	| particleStates |
	particleStates := particleDrafts collect: [:particleDraft | particleDraft asParticleState ].
	
	^ObservableUniverseState withAll: particleStates 