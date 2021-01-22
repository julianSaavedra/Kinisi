configuring
addConstantForce: targetForce named: name

	| specification |
	specification := ConstantForceSpecification named: name with: targetForce. 
	self addChangeSpecification: specification