private
labeledPointFor: axisName with: axisBaseEndPoint in: canvas

	| point |
	point := self pointFor: axisName with: axisBaseEndPoint in: canvas.
	self setLabelOn: point.
	^ point