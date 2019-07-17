updating
updateWith: aPhysicalState

	self assertParticleName: aPhysicalState.
	mass := aPhysicalState mass.
	position := aPhysicalState position.
	velocity := aPhysicalState velocity.
	acceleration := aPhysicalState acceleration