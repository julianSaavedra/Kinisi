menu - action
addConstantAccelerationOnSelectedParticle

	| acceleration |
	acceleration := MeasureVector nullWith: UnitProvider soleInstance meterPerSquareSecond.
	self resetSelectedParticleChangeSpecificationsAfter: [:selectedParticle |
		selectedParticle addConstantAcceleration: acceleration named: 'ConstantAcceleration' ]