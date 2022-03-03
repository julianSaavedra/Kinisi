sourcing
projectilesWithSameVelocityInXDimensionAndDifferentInitialVelocityInYDimension

	| scenarioSetting |
	scenarioSetting := ParticleModelScenarioSetting
		projectilesWithSameVelocityInXDimensionAndDifferentInitialVelocityInYDimension.
	^self
		standardSmallParticlesExampleWith: scenarioSetting
		and: [:workbench | 
	 		workbench
		 	 quadrantGridWith: Color gray;
		 	 scale: resource oneMeter * 25 ]