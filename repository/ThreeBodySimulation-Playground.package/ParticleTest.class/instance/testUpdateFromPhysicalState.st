tests
testUpdateFromPhysicalState

	| particle physicalState oneKilogram origin velocity acceleration |
	oneKilogram := testResource oneKilogram.
	origin := testResource nullPosition.
	velocity := testResource velocityVectorWithAllComponentsWithAmount: 1.
	acceleration := testResource accelerationVectorWithAllComponentsWithAmount: 2.
 
	particle := Particle named: 'ParticleA' with: Color blue of: oneKilogram in: origin with: velocity and: acceleration.
	
	physicalState := self oneKilogramAndNullPropertiesPhysicalStateForParticleNamed: particle name.

	particle updateWith: physicalState.

	self assert: particle mass equals: physicalState mass.
	self assert: particle position equals: physicalState position.
	self assert: particle velocity equals: physicalState velocity.
	self assert: particle acceleration equals: physicalState acceleration