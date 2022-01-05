test - scenario depiction
testZoomIsLesserAfterScenarioIsZoomedOut

	self
		assertZoomsWith: [:newZoom :originalZoom | newZoom < originalZoom ]
		after: [ workbench zoomOut ]