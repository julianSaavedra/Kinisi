tests
testParticleObservationChangesItsPositionToOneMeterInDirections

	| observation oneMeter oneMeterInAllComponentVector |
	observation := ParticleObservation forParticleNamed: 'ParticleA'.
	oneMeter := UnitProvider soleInstance meter with: 1. 
	oneMeterInAllComponentVector := MeasureVector x: oneMeter y: oneMeter z: oneMeter.
	
	self deny: observation particlePosition equals: oneMeterInAllComponentVector.
	observation := observation particlePosition: oneMeterInAllComponentVector.
	
	self assert: observation particlePosition equals: oneMeterInAllComponentVector.