test - new model
testParticleIsRenderedBlueAndItSizeIsTwenty

	| renderer size |
	size := 20.
	particle color: Color blue.
	renderer := ParticleRenderer basedOn: particle with: size.
		
	renderer drawIn: view basedOn: particle.
	
	self assert: view elements size equals: 1.
	self assert: view elements first color equals: particle color.
	self assert: view elements first height equals: size.
	self assert: view elements first width equals: size 