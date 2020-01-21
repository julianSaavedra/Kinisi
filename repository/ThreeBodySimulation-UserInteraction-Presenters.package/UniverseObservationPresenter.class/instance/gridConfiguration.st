initialization
gridConfiguration

	^ GridConfiguration
		withColor: (Color gray alpha: 0.7)
		size: 10
		andDistance: (UnitProvider soleInstance meter with: 0.1)