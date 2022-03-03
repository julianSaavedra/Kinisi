sourcing
particleWithUniformLinearMotionInXAndYDimensions

	| scenarioSetting |
	scenarioSetting := ParticleModelScenarioSetting particleWithUniformLinearMotionInXAndYDimensions.
	^self
		  standardSmallParticlesExampleWith: scenarioSetting
		  and: [ :workbench | 
			  workbench
				  quadrantGridWith: Color gray;
				  scale: resource oneMeter / 2 ]