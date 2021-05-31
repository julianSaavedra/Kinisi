building configuration
addConstantForce: targetForce for: particle

	self assertSubjectUniverseIncludes: particle.
	description addConstantForce: targetForce for: particle