asserting
assertPositionOf: targetParticle in: universeState isCloseTo: expectedPosition

	self assert: targetParticle in: universeState with: [:particle |
		 self assertVector: particle position closeTo: expectedPosition ]