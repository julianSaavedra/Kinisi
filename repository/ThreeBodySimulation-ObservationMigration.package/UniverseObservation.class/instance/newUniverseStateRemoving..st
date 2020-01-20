private
newUniverseStateRemoving: targetParticleState

	| currentParticleStates newParticleStates |
	currentParticleStates := universeState physicalStates.
	newParticleStates := currentParticleStates reject: [:particleState | particleState particleName = targetParticleState particleName].
	^ObservableUniverseState with: newParticleStates