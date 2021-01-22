configuring
addConstantAcceleration: targetAcceleration named: targetName
 
	| specification |
	specification := ConstantAccelerationSpecification named: targetName with: targetAcceleration.
	self addChangeSpecification: specification