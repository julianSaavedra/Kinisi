private - axis
drawYMarkerIn: canvas

	self
		drawMarkerIn: canvas
		from: self markStartingPointDistance negated @ 0
		to: self markEndingPointDistance negated @ 0