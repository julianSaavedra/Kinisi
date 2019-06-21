actions
drawIn: aView movedFromCenterBy: aPoint

	| originElement xAxisEndPointElement yAxisEndPointElement |
	originElement := self newOriginElementIn: aView movedFromCenterBy: aPoint.
	xAxisEndPointElement := self newXAxisEndPointElementIn: aView movedFromCenterBy: aPoint.
	yAxisEndPointElement := self 	newYAxisEndPointElementIn: aView movedFromCenterBy: aPoint.

	self
		drawAxisBasedOn: originElement
		with: xAxisEndPointElement
		and: yAxisEndPointElement
		in: aView