user interaction
acceleration: targetAcceleration

	| targetParticleState |
	targetParticleState := self newParticleStateWithAcceleration: targetAcceleration.
	self updateState: targetParticleState