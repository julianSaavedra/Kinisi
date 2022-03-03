sourcing
particleWithConstantAccelerationMovingAlongXOnly

	| scenarioSetting |
	scenarioSetting := ParticleModelScenarioSetting particleWithConstantAccelerationMovingAlongXOnly.
	^self
		standardSmallParticlesExampleWith: scenarioSetting
		and: [:workbench | 
	 		workbench
		 	 quadrantGridWith: Color gray;
		 	 scale: resource oneMeter ]