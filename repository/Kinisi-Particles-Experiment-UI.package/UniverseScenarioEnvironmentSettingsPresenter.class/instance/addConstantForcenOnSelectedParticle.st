menu - action
addConstantForcenOnSelectedParticle

	| force |
	force := MeasureVector nullWith: UnitProvider soleInstance newton.
	self resetSelectedParticleChangeSpecificationsAfter: [:selectedParticle |
		selectedParticle addConstantForce: force named: 'ConstantForce' ]