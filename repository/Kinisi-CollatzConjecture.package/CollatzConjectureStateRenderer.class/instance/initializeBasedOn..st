initialization
initializeBasedOn: renderingSettings

	background := renderingSettings background.
	shape := RSLabel new.
	shape
		fontName: renderingSettings font;
		fontSize: renderingSettings numberSize;
		color: renderingSettings numberColor