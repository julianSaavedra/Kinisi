menu - action
addForcePerpendicularToVelocityCounterclockwiseOnSelectedParticle

	| forceModule |
	forceModule := UnitProvider soleInstance newton with: 1.
	self resetSelectedParticleChangeSpecificationsAfter: [:selectedParticle |
		selectedParticle
			addForceCounterclockwisePerpendicularToVelocityWith: forceModule
			named: 'Force Penperdicular to Velocity - Counterclockwise' ]