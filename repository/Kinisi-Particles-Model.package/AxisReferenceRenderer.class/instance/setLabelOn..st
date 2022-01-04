private
setLabelOn: point

	| label |
	label := RSLabeled new.
	label shapeBuilder labelShape
		color: color;
		fontSize: 12.
	label onShape: point