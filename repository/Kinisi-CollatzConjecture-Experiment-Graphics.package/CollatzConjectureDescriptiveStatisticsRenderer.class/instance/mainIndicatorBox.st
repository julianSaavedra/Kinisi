private 
mainIndicatorBox

	| indicatorBox |
	indicatorBox := RSCircle new.
	indicatorBox
		withBorder;
		borderColor: color;
		color: background;
		size: mainIndicatorBoxSize;
		position: 0 @ 0.
	indicatorBox border width: 10.
	^ indicatorBox