private
standardSmallParticlesExampleWith: modelScenarioSetting and: visualizationSetting

	| fortyMilliseconds tenSeconds scenarioSetting |
	fortyMilliseconds := unitProvider millisecond with: 40.
	tenSeconds := unitProvider second with: 10.
	scenarioSetting := ParticlesWorkbenchExampleSetting
		                   applying: modelScenarioSetting
		                   and: visualizationSetting.
	^self
		  exampleWith: scenarioSetting
		  steppingBy: fortyMilliseconds
		  over: tenSeconds