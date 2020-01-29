user interaction
position: targetPosition

	| targetParticleState |
	targetParticleState := self newParticleStateWithPosition: targetPosition.
	self updateState: targetParticleState