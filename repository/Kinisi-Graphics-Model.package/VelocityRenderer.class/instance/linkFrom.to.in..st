private
linkFrom: particleElement to: velocityEndPointElement in: view

	| builder |
	builder := RSEdgeBuilder arrowedLine.
	self setArrowShapeIn: builder shape.
	builder
		canvas: view;
		edgeFrom: particleElement to: velocityEndPointElement