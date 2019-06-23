private
drawLabelIn: aView for: oneDimensionPosition movedTo: aPoint

	| labelMarkerPoint markLabel |
	markLabel := self labelBasedOn: oneDimensionPosition.
	labelMarkerPoint := self dotShapeElementOn: markLabel.
	aView add: labelMarkerPoint.
	labelMarkerPoint @ RTLabeled.
	labelMarkerPoint translateTo: aPoint