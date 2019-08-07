examples - grid
exampleEarthAndSunGridConfiguration

	^GridConfiguration
		withColor: (Color gray alpha: 0.7)
		size: 10
		andScale: (UnitProvider soleInstance kilometer with: 10e6)