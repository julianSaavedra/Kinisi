asserting
assertZoomsWith: zoomComparison after: zoomModification

	| universeObservation originalZoom newZoom measureWithOriginalZoom measureWithNewZoom |
	originalZoom := workbench scenario zoom.
	
	zoomModification value: universeObservation.
	
	newZoom := workbench scenario zoom.
	measureWithOriginalZoom := originalZoom measureBetween: 0 and: 100.
	measureWithNewZoom := newZoom measureBetween: 0 and: 100.
	self assert: (zoomComparison value: measureWithNewZoom value: measureWithOriginalZoom)