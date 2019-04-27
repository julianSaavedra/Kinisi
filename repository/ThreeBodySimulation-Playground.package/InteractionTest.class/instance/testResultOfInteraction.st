tests
testResultOfInteraction

	| kilogram meter second twoSeconds particleAMass particleBMass particleAPosition particleBPosition nullVelocity nullAcceleration particleAState inTimeParticleA particleBState inTimeParticleB interaction |

	kilogram := UnitProvider soleInstance kilogram.
	meter := UnitProvider soleInstance meter.
	second := UnitProvider soleInstance second.
	twoSeconds := second with: 2.
	particleAMass := kilogram with: 1.
	particleBMass := kilogram with: 2.
	particleAPosition := MeasureVector nullWith: meter.
	particleBPosition := MeasureVector x: 1/3 sqrt y: 1/3 sqrt z: 1/3 sqrt with: meter.
	nullVelocity := MeasureVector nullWith: meter / second.
	nullAcceleration := MeasureVector nullWith: meter / second / second.
	
	particleAState := PhysicalState withMass: particleAMass position: particleAPosition velocity: nullVelocity andAcceleration: nullAcceleration.
	inTimeParticleA := InTimeParticle of: (Particle named: 'Particle A') with: particleAState at: twoSeconds.

	particleBState := PhysicalState withMass: particleBMass position: particleBPosition velocity: nullVelocity andAcceleration: nullAcceleration.
	inTimeParticleB := InTimeParticle of: (Particle named: 'Particle B') with: particleBState at: twoSeconds.

	interaction := Interaction over: inTimeParticleA causedBy: inTimeParticleB.
	
	self
		assert: interaction result norm
		equals: (UnitProvider soleInstance newton with: 1.3348e-10)