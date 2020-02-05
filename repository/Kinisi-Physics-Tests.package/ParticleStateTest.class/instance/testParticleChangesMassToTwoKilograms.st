tests
testParticleChangesMassToTwoKilograms

	self
		assert: [:newParticle | newParticle mass ]
		isChangeTo: testResource twoKilograms
		with: [:currentParticle :targetValue | currentParticle mass: targetValue ]