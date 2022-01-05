initialization
initializeZoomOut

	zoomOut := self newButton.
	zoomOut
		icon: Smalltalk ui icons glamorousZoomOut;
		action: [ workbench zoomOut ];
		whenActionPerformedDo: [ self performModelChangeAction ]