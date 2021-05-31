asserting
assertPositionOf: targetParticle in: finalState is: expectedPosition

	self assert: targetParticle in: finalState with: [:particle |
		self assert: particle position equals: expectedPosition ]