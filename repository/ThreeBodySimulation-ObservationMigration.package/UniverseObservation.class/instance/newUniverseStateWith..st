private
newUniverseStateWith: particleState

	| newParticleStates |
	newParticleStates := OrderedCollection withAll: universeState physicalStates.
	newParticleStates add: particleState.
	
	^ObservableUniverseState with: newParticleStates