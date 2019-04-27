tests
testInTimeParticleCreation

	| position velocity acceleration meter second kilogram mass physicalState twoSeconds timelessParticle inTimeParticle |

	kilogram := UnitProvider soleInstance kilogram.
	meter := UnitProvider soleInstance meter.
	second := UnitProvider soleInstance second.
	mass := kilogram with: 1.
	position := MeasureVector x: 1 y: 1 z: 1 with: meter.
	velocity := MeasureVector x: 2 y: 2 z: 2 with: meter / second.
	acceleration := MeasureVector x: 3 y: 3 z: 3 with: meter / second / second.
	
	physicalState := PhysicalState withMass: mass position: position velocity: velocity andAcceleration: acceleration.
	twoSeconds := second with: 2.
	timelessParticle := Particle named: 'Particle A'.
	inTimeParticle := InTimeParticle of: timelessParticle with: physicalState at: twoSeconds.

	self assert: inTimeParticle momentInTime equals: twoSeconds.
	self assert: inTimeParticle name equals: 'Particle A'.
	self assert: inTimeParticle state equals: physicalState