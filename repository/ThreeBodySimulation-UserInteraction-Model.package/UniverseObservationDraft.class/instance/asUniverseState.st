conversion
asUniverseState

	| particleStates |
	particleStates := particleDrafts collect: [:particleDraft | particleDraft asPhysicalState ].
	
	^ObservableUniverseState with: particleStates 