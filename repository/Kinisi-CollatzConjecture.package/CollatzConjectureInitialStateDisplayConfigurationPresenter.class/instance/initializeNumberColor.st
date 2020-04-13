initialization
initializeNumberColor

	color := self
		colorListWith: [workbench displaySettings numberColor]
		and: [:targetColor | CollatzConjectureDisplaySettingsModifier onColor: targetColor]

	