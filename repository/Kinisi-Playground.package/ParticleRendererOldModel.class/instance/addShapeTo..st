private
addShapeTo: element

	| shape |
	shape := RTEllipse new.
	shape color: color.
	shape size: size.
	element addShape: shape