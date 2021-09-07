settings
earthAndSun

	| twelveHours oneYear |
	twelveHours := UnitProvider soleInstance hour with: 12.
	oneYear := UnitProvider soleInstance day with: 365.
	^self
		  exampleWith: EarthAndSunExampleSetting new
		  steppingBy: twelveHours
		  over: oneYear