private
drawMarkerIn: canvas from: fromPoint to: toPoint

	| marker |
	marker := RSLine new.
	marker startPoint: fromPoint.
	marker endPoint: toPoint.
	marker color: color.
	canvas addShape: marker