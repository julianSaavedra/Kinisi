user interaction
particleName: targetName

	| targetParticleState |
	targetParticleState := self newParticleStateWithName: targetName.
	self updateState: targetParticleState