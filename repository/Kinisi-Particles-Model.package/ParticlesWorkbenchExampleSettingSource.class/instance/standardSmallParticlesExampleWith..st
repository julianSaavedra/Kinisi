private
standardSmallParticlesExampleWith: modelScenarioSetting

	| fortyMilliseconds tenSeconds scenarioSetting |
	fortyMilliseconds := unitProvider millisecond with: 40.
	tenSeconds := unitProvider second with: 10.
	scenarioSetting := ParticlesWorkbenchExampleSetting
		                   applying: modelScenarioSetting
		                   and: self standardSmallParticlesVisualizationSetting.
	^self
		  exampleWith: scenarioSetting
		  steppingBy: fortyMilliseconds
		  over: tenSeconds