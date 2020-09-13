asserting
assertZoomsWith: zoomComparison after: zoomModification

	| originalZoom newZoom measureWithOriginalZoom measureWithNewZoom |
	originalZoom := workbench scenario zoom.
	
	zoomModification value.
	
	newZoom := workbench scenario zoom.
	measureWithOriginalZoom := originalZoom measureBetween: 0 and: 100.
	measureWithNewZoom := newZoom measureBetween: 0 and: 100.
	self assert: (zoomComparison value: measureWithNewZoom value: measureWithOriginalZoom)