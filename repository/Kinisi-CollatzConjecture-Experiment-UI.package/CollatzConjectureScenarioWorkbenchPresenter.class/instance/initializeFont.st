initialization
initializeFont

	font := self
		newDropListOn: FontChooser new fontListStrings
		with: [:targetFont | workbench font: targetFont ]
		using: [workbench scenario font]