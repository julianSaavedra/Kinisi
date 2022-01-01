private 
baseSateliteIndicatorBox

	| indicatorBox |
	indicatorBox := RSBox new.
	indicatorBox
		withBorder;
		borderColor: color;
		color: background;
		extent: self sateliteIndicatorExtent.
	indicatorBox border width: 3.
	^ indicatorBox