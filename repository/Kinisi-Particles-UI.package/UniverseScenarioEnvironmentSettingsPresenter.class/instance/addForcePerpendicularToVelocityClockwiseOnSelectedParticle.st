menu - action
addForcePerpendicularToVelocityClockwiseOnSelectedParticle

	| forceModule |
	forceModule := UnitProvider soleInstance newton with: 1.
	self resetSelectedParticleChangeSpecificationsAfter: [:selectedParticle |
		selectedParticle
			addForceClockwisePerpendicularToVelocityWith: forceModule
			named: 'Force Penperdicular to Velocity - Clockwise' ]