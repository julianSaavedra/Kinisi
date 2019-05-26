tests
testPhysicalStateWithGivenNameMassPositionVelocityAndAcceleration

	| mass position velocity acceleration physicalState |
	mass := testResource oneKilogram.
	position := testResource oneMeterInAllComponentsVector.
	velocity := testResource velocityVectorWithAllComponentsWithAmount: 2.
	acceleration := testResource accelerationVectorWithAllComponentsWithAmount: 3.
	
	physicalState := testResource
		physicalStateForParticleNamed: 'ParticleA'
		with: mass
		in: position
		withVelocity: velocity
		withAcceleration: acceleration.
		
	self assert: physicalState particleName equals: 'ParticleA'.
	self assert: physicalState mass equals: mass.
	self assert: physicalState position equals: position.
	self assert: physicalState velocity equals: velocity.
	self assert: physicalState acceleration equals: acceleration