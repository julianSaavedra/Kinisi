initialization
gridConfiguration

	^ GridConfiguration
		withColor: (Color gray alpha: 0.7)
		size: 10
		andScale: (UnitProvider soleInstance meter with: 0.1)