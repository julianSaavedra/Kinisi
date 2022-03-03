sourcing
twoPlanetsSpinningAround

	| oneDay fourYears modelScenarioSetting scenarioSetting |
	oneDay := unitProvider day with: 1.
	fourYears := unitProvider day with: 1460.
	modelScenarioSetting := PairOfPlanetsSpinningAroundExampleSetting new.
	scenarioSetting := ParticlesWorkbenchExampleSetting
		                   applying: modelScenarioSetting
		                   and: self standardPlanetaryVisualizationSetting.
	^self
		  exampleWith: scenarioSetting
		  steppingBy: oneDay
		  over: fourYears