tests
testCreationFromParameters

	| particle oneKilogram origin velocity acceleration |
	oneKilogram := testResource oneKilogram.
	origin := testResource nullPosition.
	velocity := testResource velocityVectorWithAllComponentsWithAmount: 1.
	acceleration := testResource accelerationVectorWithAllComponentsWithAmount: 2.
 
	particle := Particle named: 'ParticleA' with: Color blue of: oneKilogram in: origin with: velocity and: acceleration.
	
	self assert: particle name equals: 'ParticleA'.
	self assert: particle color equals: Color blue.
	self assert: particle mass equals: oneKilogram.
	self assert: particle position equals: origin.
	self assert: particle velocity equals: velocity.
	self assert: particle acceleration equals: acceleration