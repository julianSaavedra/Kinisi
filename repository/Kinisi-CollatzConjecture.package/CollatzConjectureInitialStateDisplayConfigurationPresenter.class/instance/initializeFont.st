initialization
initializeFont

	font := self
		newDropListOn: self systemFonts
		with: [:targetFont | CollatzConjectureDisplaySettingsModifier onFont: targetFont]
		using: [workbench displaySettings font]