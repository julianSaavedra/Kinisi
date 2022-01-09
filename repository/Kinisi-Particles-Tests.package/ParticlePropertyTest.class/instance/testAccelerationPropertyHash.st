tests
testAccelerationPropertyHash

	| acceleration anotherAcceleration |
	acceleration := ParticleProperty acceleration.
	anotherAcceleration := ParticleProperty acceleration.
	
	self assert: acceleration hash equals: anotherAcceleration hash.
	self deny: acceleration identicalTo: anotherAcceleration