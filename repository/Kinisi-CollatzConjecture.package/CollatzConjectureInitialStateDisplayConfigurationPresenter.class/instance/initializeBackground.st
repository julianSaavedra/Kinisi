initialization
initializeBackground

	background := self
		colorListWith: [workbench displaySettings background]
		and: [:targetColor | CollatzConjectureDisplaySettingsModifier onBackground: targetColor]