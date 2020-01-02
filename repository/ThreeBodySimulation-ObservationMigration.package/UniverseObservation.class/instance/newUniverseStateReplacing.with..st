as yet unclassified
newUniverseStateReplacing: currentParticleState with: targetParticleState

	| currentParticleStates newParticleStates |
	currentParticleStates := universeState physicalStates asOrderedCollection.
	newParticleStates := currentParticleStates reject: [:particleState | particleState particleName = currentParticleState particleName].
	newParticleStates add: targetParticleState.
	^ObservableUniverseState with: newParticleStates