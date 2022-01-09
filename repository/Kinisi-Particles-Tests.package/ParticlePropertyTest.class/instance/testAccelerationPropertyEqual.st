tests
testAccelerationPropertyEqual

	| acceleration anotherAcceleration |
	acceleration := ParticleProperty acceleration.
	anotherAcceleration := ParticleProperty acceleration.
	
	self assert: acceleration equals: anotherAcceleration.
	self deny: acceleration identicalTo: anotherAcceleration.
	self deny: acceleration equals: ParticleProperty position.
	self deny: acceleration equals: ParticleProperty velocity