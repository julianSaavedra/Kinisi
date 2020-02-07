accessing
stateFor: targetParticle

	^universeState particles detect: [:particle | particle particleName = targetParticle particleName]