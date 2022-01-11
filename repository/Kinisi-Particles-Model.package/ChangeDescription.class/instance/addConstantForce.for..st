configuring
addConstantForce: targetForce for: targetParticle

	self
		for: targetParticle
		add: (ConstantForceComponent on: targetForce)