private
drawLabelIn: aView for: axisName using: oneDimensionPosition movedTo: aPoint

	| labelMarkerPoint markLabel |
	markLabel := self labelFor: axisName with: oneDimensionPosition.
	labelMarkerPoint := self dotShapeElementOn: markLabel.
	aView add: labelMarkerPoint.
	labelMarkerPoint @ RTLabeled.
	labelMarkerPoint translateTo: aPoint