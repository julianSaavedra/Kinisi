sourcing
earthAndSun

	| twelveHours oneYear scenarioSetting modelScenarioSetting |
	modelScenarioSetting := EarthAndSunExampleSetting new.
	twelveHours := unitProvider hour with: 12.
	oneYear := unitProvider day with: 365.
	scenarioSetting := ParticlesWorkbenchExampleSetting
		                   applying: modelScenarioSetting
		                   and: self standardPlanetaryVisualizationSetting.
	^ self
		  exampleWith: scenarioSetting
		  steppingBy: twelveHours
		  over: oneYear