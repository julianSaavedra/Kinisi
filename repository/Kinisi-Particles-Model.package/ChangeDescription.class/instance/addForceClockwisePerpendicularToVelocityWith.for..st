configuring
addForceClockwisePerpendicularToVelocityWith: forceModule for: targetParticle

	self
		for: targetParticle
		add: (ForcePerpendicularToVelocityComponent clockwiseWith: forceModule)