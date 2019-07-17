tests
testUpdateFromPhysicalStateFailsIfPhysicalStateHasAnotherParticleNameThanTheParticleBeingUpdated

	| particle physicalState oneKilogram origin velocity acceleration |
	oneKilogram := testResource oneKilogram.
	origin := testResource nullPosition.
	velocity := testResource velocityVectorWithAllComponentsWithAmount: 1.
	acceleration := testResource accelerationVectorWithAllComponentsWithAmount: 2.
 
	particle := Particle named: 'ParticleA' with: Color blue of: oneKilogram in: origin with: velocity and: acceleration.
	
	physicalState := self oneKilogramAndNullPropertiesPhysicalStateForParticleNamed: #ParticleB.
	
	self deny: physicalState particleName equals: particle name.
	self should: [ particle updateWith: physicalState ] raise: PhysicsModelError