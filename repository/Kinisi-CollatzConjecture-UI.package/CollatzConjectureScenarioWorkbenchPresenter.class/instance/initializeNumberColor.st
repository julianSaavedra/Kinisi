initialization
initializeNumberColor

	color := self
		colorListWith: [ workbench scenario numberColor ]
		and: [:targetColor | workbench numberColor: targetColor]

	