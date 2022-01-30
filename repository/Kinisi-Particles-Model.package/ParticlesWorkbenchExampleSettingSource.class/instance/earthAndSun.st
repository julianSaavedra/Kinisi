sourcing
earthAndSun

	| twelveHours oneYear scenarioSetting modelScenarioSetting |
	modelScenarioSetting := EarthAndSunExampleSetting new.
	twelveHours := UnitProvider soleInstance hour with: 12.
	oneYear := UnitProvider soleInstance day with: 365.
	scenarioSetting := ParticlesWorkbenchExampleSetting
		                   applying: modelScenarioSetting
		                   and: self standardPlanetaryVisualizationSetting.
	^ self
		  exampleWith: scenarioSetting
		  steppingBy: twelveHours
		  over: oneYear