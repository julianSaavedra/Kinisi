tests
testUniverseObservationHasLesserZoomAfterItIsZoomedOut

	self
		assertZoomsWith: [:newZoom :originalZoom | newZoom < originalZoom ]
		after: [:universeObservation | universeObservation zoomOut]