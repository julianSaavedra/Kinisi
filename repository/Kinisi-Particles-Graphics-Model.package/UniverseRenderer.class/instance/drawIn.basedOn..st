actions
drawIn: canvas basedOn: universe

	canvas color: background.

	universe particles
		do: [ :particleObservation | 
			renderersMapping
				at: particleObservation particleName
				ifPresent: [ :renderer | renderer drawIn: canvas basedOn: particleObservation ] ].
		self drawRectangleOver: canvas.
	gridRenderer ifNotNil: [ gridRenderer drawIn: canvas basedOn: nil ]