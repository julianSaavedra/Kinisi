constants
markElement

	^RTLine
		edgeFrom: (self dotShapeElementOn: #firstMarkerPoint)
		to: (self dotShapeElementOn: #secondMarkerPoint)