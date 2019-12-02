accessing
particleObservations

	^universeState physicalStates collect: [:particleState |
		ParticleObservation
			over: particleState
			with: (colorMapping at: particleState particleName)
			in: self
		]