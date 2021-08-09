private 
baseSateliteIndicatorBox

	| indicatorBox |
	indicatorBox := RSBox new.
	indicatorBox
		withBorder;
		color: Color white;
		extent: self sateliteIndicatorExtent.
	indicatorBox border width: 3.
	^ indicatorBox