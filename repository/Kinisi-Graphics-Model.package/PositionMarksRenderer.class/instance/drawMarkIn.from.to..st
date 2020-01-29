private
drawMarkIn: aView from: fromPoint to: toPoint

	| marker |
	marker := self markElement.
	aView add: marker.
	marker from translateTo: fromPoint.
	marker to translateTo: toPoint
