sourcing
particleWithUniformLinearMotionAlongXOnly

	| modelScenarioSetting |
	modelScenarioSetting := ParticleModelScenarioSetting particleWithUniformLinearMotionAlongXOnly.
	^self
		  standardSmallParticlesExampleWith: modelScenarioSetting
		  and: [ :workbench | 
			  workbench
				  quadrantGridWith: Color gray;
				  scale: resource oneMeter / 2 ]