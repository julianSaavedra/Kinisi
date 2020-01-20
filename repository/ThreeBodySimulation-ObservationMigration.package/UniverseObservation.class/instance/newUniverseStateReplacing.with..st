private
newUniverseStateReplacing: currentParticleState with: targetParticleState

	^self
		newUniverseAdding: targetParticleState
		to: (self newUniverseStateRemoving: currentParticleState)