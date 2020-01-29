data examples
earthAndSunExampleGridConfiguration

	^GridConfiguration
		withColor: (Color gray alpha: 0.1)
		size: 10
		andDistance: (UnitProvider soleInstance kilometer with: 10e6)