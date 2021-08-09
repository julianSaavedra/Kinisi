private 
mainIndicatorBox

	| indicatorBox |
	indicatorBox := RSCircle new.
	indicatorBox
		withBorder;
		color: Color white;
		size: mainIndicatorBoxSize;
		position: 0 @ 0.
	indicatorBox border width: 10.
	^ indicatorBox