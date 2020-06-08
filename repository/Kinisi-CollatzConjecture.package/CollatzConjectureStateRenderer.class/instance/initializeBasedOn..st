initialization
initializeBasedOn: renderingSettings

	background := renderingSettings background.
	shape := TRLabelShape new.
	shape
		fontName: renderingSettings font;
		fontSize: renderingSettings numberSize;
		color: renderingSettings numberColor