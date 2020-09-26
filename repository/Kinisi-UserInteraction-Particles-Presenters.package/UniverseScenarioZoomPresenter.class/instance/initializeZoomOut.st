initialization
initializeZoomOut

	zoomOut := self
		newButtonWith: Smalltalk ui icons glamorousZoomOut
		and: [ universeObservation zoomOut.
			self doModelChangeAction ]