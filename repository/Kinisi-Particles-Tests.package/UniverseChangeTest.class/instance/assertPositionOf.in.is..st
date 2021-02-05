asserting
assertPositionOf: targetParticle in: finalState is: expectedPosition

	finalState particles
		detect: [:particle | particle particleName = targetParticle particleName ]
		ifFound: [:particle | self assert: particle position equals: expectedPosition ]
		ifNone: [ self fail ]