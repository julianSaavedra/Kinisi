private - utilities
setLabelOn: shape

	| label |
	label := RSLabeled new.
	label shapeBuilder labelShape
		color: color;
		fontSize: 12.
	label onShape: shape