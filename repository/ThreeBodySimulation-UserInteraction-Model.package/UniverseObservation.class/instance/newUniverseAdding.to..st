private
newUniverseAdding: particleState to: universeToBeAdded

	| newParticleStates |
	newParticleStates := OrderedCollection withAll: universeToBeAdded particles.
	newParticleStates add: particleState.
	^ObservableUniverseState withAll: newParticleStates