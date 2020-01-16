tests
assertZoomsWith: zoomComparison after: zoomModification

	| universeObservation originalZoom newZoom measureWithOriginalZoom measureWithNewZoom |
	universeObservation := UniverseObservation new.
	originalZoom := universeObservation zoom.
	
	zoomModification value: universeObservation.
	
	newZoom := universeObservation zoom.
	measureWithOriginalZoom := originalZoom measureBetween: 0 and: 100.
	measureWithNewZoom := newZoom measureBetween: 0 and: 100.
	self assert: (zoomComparison value: measureWithNewZoom value: measureWithOriginalZoom)