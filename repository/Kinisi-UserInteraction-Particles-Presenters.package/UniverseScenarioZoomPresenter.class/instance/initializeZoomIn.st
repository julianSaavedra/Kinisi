initialization
initializeZoomIn

	zoomIn := self newButton.
	zoomIn
		icon: Smalltalk ui icons glamorousZoomIn;
		action: [ workbench zoomIn ];
		whenActionPerformedDo: [ self performModelChangeAction ]