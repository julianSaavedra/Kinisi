private
newUniverseStateRemoving: targetParticleState

	| currentParticleStates newParticleStates |
	currentParticleStates := universeState particles.
	newParticleStates := currentParticleStates reject: [:particleState | particleState particleName = targetParticleState particleName].
	^ObservableUniverseState withAll: newParticleStates