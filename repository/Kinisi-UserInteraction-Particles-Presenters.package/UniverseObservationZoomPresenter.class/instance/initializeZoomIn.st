initialization
initializeZoomIn

	zoomIn := self
		newButtonWith: Smalltalk ui icons glamorousZoomIn
		and: [ universeObservation zoomIn.
			self doModelChangeAction ]