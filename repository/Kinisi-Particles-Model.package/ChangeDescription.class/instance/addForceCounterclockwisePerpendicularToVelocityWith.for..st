configuring
addForceCounterclockwisePerpendicularToVelocityWith: forceModule for: targetParticle

	self
		for: targetParticle
		add: (ForcePerpendicularToVelocityComponent counterclokcwiseWith: forceModule)