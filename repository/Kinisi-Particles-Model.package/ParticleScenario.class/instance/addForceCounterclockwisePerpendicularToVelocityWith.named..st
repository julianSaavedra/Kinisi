configuring
addForceCounterclockwisePerpendicularToVelocityWith: forceModule named: targetName

	| specification |
	specification := ForcePerpendicularToVelocitySpecification
							named: targetName
							with: forceModule
							with: ForceOrientationSpecification counterclockwise.
	self addChangeSpecification: specification