configuring
addForceClockwisePerpendicularToVelocityWith: forceModule named: targetName

	| specification |
	specification := ForcePerpendicularToVelocitySpecification
							named: targetName
							with: forceModule
							with: ForceOrientationSpecification clockwise.
	self addChangeSpecification: specification