initialization
initializeBackground

	background := self
		colorListWith: [ workbench scenario background ]
		and: [:targetColor | workbench background: targetColor]