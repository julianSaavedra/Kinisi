actions
applyOn: element

	| shape |
	shape := RTEllipse new.
	shape
		color: color;
		size: (massTransformation value: element model mass).
	
	element addShape: shape.