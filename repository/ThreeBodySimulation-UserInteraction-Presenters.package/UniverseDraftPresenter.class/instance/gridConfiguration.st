initialization
gridConfiguration

	^ GridConfiguration
		withColor: (Color gray)
		size: 10
		andScale: (UnitProvider soleInstance meter with: 1)