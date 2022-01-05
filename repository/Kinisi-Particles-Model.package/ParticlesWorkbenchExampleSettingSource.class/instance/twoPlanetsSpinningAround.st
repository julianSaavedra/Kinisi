settings
twoPlanetsSpinningAround

	| oneDay fourYears |
	oneDay := UnitProvider soleInstance day with: 1.
	fourYears := UnitProvider soleInstance day with: 1460.
	^self
		  exampleWith: PairOfPlanetsSpinningAroundExampleSetting new
		  steppingBy: oneDay
		  over: fourYears