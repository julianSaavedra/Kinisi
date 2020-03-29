actions
drawIn: view basedOn: universe

	view canvas color: background.
	universe particles do: [:particleObservation | 
		renderersMapping
			at: particleObservation particleName
			ifPresent: [:renderer | renderer drawIn: view basedOn: particleObservation ]].
	gridRenderer ifNotNil: [ gridRenderer drawIn: view basedOn: nil ]