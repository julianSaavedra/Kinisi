user interaction
velocity: targetVelocity

	| targetParticleState |
	targetParticleState := self newParticleStateWithVelocity: targetVelocity.
	self updateState: targetParticleState