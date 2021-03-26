rendering
pointFor: position with: gridColor in: canvas

	| point |
	point := RSCircle new.
	point model: position.
	point radius: 1.
	point color: gridColor.
	canvas add: point.
	point translateTo: position.
	^point