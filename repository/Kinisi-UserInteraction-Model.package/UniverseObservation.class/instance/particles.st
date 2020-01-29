accessing
particles

	^universeState particles collect: [:particleState |
		ParticleObservation
			over: particleState
			with: (colorMapping at: particleState particleName)
			in: self
		]