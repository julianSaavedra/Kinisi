test - scenario depiction
testZoomIsGreaterAfterScenarioIsZoomedIn

	self
		assertZoomsWith: [:newZoom :originalZoom | newZoom > originalZoom ]
		after: [ workbench zoomIn ]