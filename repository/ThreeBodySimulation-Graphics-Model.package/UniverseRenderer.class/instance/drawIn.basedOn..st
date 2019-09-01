actions
drawIn: view basedOn: universe

	universe withComponentsDo: [:aParticleState | 
		renderersMapping
			at: aParticleState particleName
			ifPresent: [:renderer | renderer drawIn: view basedOn: aParticleState ]]