private
drawOn: canvas

	| state settings |
	settings :=  workbench displaySettings.	
	canvas clean.
	canvas color: settings background.
	state := TRLabelShape new.
	state text: workbench initialState number asString.
	state
		fontName: settings font;
		fontSize: settings numberSize;
		color: settings numberColor.
	canvas addShape: state