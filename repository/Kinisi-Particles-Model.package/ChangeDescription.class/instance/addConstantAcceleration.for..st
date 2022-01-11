configuring
addConstantAcceleration: targetAcceleration for: targetParticle

	self
		for: targetParticle
		add: (ConstantAccelerationComponent on: targetAcceleration)