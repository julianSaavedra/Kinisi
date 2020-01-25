actions
remove: aParticleDraft


	particleDrafts
		remove: aParticleDraft
		ifAbsent: [ SimulationError signal: 'Universe draft does not contain particle draft intended to be removed.' ]