asserting
assertPostionAndVelocityOf: particle remainWithSimilarNormWithinAll: experimentResultStates

	| expectedPositionNorm expectedVelocityNorm particleStates particleName |
	particleName := particle particleName.
	expectedPositionNorm := particle position norm.
	expectedVelocityNorm := particle velocity norm.
	particleStates := experimentResultStates collect: [:universe | 
		                  universe particles detect: [:aParticle |
								aParticle particleName = particleName ] ].
	particleStates do: [:particleState | 
		self assert: (particleState position norm closeTo: expectedPositionNorm).
		self assert: (particleState velocity norm closeTo: expectedVelocityNorm) ]