tests
testUniverseObservationHasGreaterZoomAfterItIsZoomedIn

	self
		assertZoomsWith: [:newZoom :originalZoom | newZoom > originalZoom ]
		after: [:universeObservation | universeObservation zoomIn]