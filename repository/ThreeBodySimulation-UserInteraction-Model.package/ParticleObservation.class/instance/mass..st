user interaction
mass: targetMass

	| targetParticleState |
	targetParticleState := self newParticleStateWithMass: targetMass.
	self updateState: targetParticleState