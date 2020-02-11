asserting
assertSingleParticleIn: universeObservation isFor: expectedParticleState andIsObserved: expectedColor 

	self
		assertSingleParticleIn: universeObservation
		andWithItDo: [:particleObservation |
			self
				assert: particleObservation
				isFor: expectedParticleState
				andIsObserved: expectedColor
			]