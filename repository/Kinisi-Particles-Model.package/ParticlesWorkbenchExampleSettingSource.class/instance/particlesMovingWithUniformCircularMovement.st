sourcing
particlesMovingWithUniformCircularMovement

	| scenarioSetting interfaceDefinition steppingSetting period tenMilliseconds sevendSeconds modelScenarioSetting |
	tenMilliseconds := unitProvider millisecond with: 10.
	sevendSeconds := unitProvider second with: 10.
	modelScenarioSetting := ParticleModelScenarioSetting particlesMovingWithUniformCircularMovement.
	scenarioSetting := ParticlesWorkbenchExampleSetting
		                   applying: modelScenarioSetting
		                   and: [:workbench | 
	 							workbench
		 	 						quadrantGridWith: Color gray;
		 	 						scale: resource oneMeter / 4 ].
	steppingSetting := SteppingWorkbenchSetting stepBy: tenMilliseconds over: sevendSeconds.
	period := self fortyMilliseconds / 2.
	interfaceDefinition := self animationInterfaceDefinition.
	^LabWorkbenchExampleSetting
		  apply: scenarioSetting
		  applyStepping: steppingSetting
		  withPeriod: period
		  withAll: { interfaceDefinition }