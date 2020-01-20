private
newUniverseAdding: particleState to: universeToBeAdded

	| newParticleStates |
	newParticleStates := OrderedCollection withAll: universeToBeAdded physicalStates.
	newParticleStates add: particleState.
	^ObservableUniverseState with: newParticleStates