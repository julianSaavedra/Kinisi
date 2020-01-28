actions
drawIn: view basedOn: universe

	universe particles do: [:particleObservation | 
		renderersMapping
			at: particleObservation particleName
			ifPresent: [:renderer | renderer drawIn: view basedOn: particleObservation ]]