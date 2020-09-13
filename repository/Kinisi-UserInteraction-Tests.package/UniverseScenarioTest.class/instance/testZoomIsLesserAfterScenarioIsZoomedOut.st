test - scenario depiction
testZoomIsLesserAfterScenarioIsZoomedOut

	self
		assertZoomsWith: [:newZoom :originalZoom | newZoom < originalZoom ]
		after: [:universeObservation | workbench zoomOut]