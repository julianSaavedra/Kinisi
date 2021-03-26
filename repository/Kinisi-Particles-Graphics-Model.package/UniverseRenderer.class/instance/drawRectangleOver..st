actions
drawRectangleOver: canvas

	| visionReferenceZone topLeftRectanglePoints topRightRectanglePoints bottomLeftRectanglePoints bottomRightRectanglePoints gridColor |
	gridColor := Color gray translucent.
	visionReferenceZone := canvas visibleRectangle scaleBy: 0.9.
	topLeftRectanglePoints := {visionReferenceZone topLeft. visionReferenceZone topCenter. visionReferenceZone center. visionReferenceZone leftCenter}.
	topRightRectanglePoints := {visionReferenceZone topCenter. visionReferenceZone topRight. visionReferenceZone rightCenter. visionReferenceZone center}.
	bottomLeftRectanglePoints := {visionReferenceZone bottomLeft. visionReferenceZone leftCenter. visionReferenceZone center. visionReferenceZone bottomCenter}.
	bottomRightRectanglePoints := {visionReferenceZone bottomCenter. visionReferenceZone center. visionReferenceZone rightCenter. visionReferenceZone bottomRight}.

	{topLeftRectanglePoints. topRightRectanglePoints. bottomLeftRectanglePoints. bottomRightRectanglePoints}
		do: [ :rectanglePoints |
			| gridReferencesPoints lineBuilder connections |
			gridReferencesPoints := rectanglePoints 	collect: [ :position | 
				| point |
				point := RSCircle new.
				point model: position.
				point radius: 1.
				point color: gridColor.
				canvas add: point.
				point translateTo: position.
				point ].

			lineBuilder := RSLineBuilder line.
			lineBuilder canvas: canvas.
			lineBuilder width: 1.
			lineBuilder color: gridColor.
			lineBuilder shapes: gridReferencesPoints.

			connections := rectanglePoints overlappingPairsCollect: [:to :from | to -> from ].
			connections := connections copyWith: rectanglePoints last -> rectanglePoints first.
			lineBuilder useAssociations: connections ]