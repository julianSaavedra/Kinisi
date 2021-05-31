asserting
assert: particle in: expectedUniverse with: particleAssertingBlock

	expectedUniverse particles
		detect:[:expectedParticle | particle particleName = expectedParticle particleName ]
		ifFound: particleAssertingBlock
		ifNone: [ self fail ]