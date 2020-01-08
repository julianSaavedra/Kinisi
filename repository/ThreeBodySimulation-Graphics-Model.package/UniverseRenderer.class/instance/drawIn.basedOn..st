actions
drawIn: view basedOn: universe

	universe particleObservations do: [:particleObservation | 
		renderersMapping
			at: particleObservation particleName
			ifPresent: [:renderer | renderer drawIn: view basedOn: particleObservation ]]