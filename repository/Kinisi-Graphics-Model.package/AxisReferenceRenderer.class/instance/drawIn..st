rendering
drawIn: canvas

	| origin xAxisEnd yAxisEnd |
	origin := self originPointIn: canvas.
	xAxisEnd := self xAxisEndPointIn: canvas.
	yAxisEnd := self yAxisEndPointIn: canvas.

	self
		drawAxisFrom: origin
		to: xAxisEnd
		and: yAxisEnd
		in: canvas