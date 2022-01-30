sourcing
particleWithConstantForceInXandYDimensions

	| scenarioSetting |
	scenarioSetting := ParticleModelScenarioSetting particleWithConstantForceInXandYDimensions.
	^self
		standardSmallParticlesExampleWith: scenarioSetting
		and: [:workbench | 
	 		workbench
		 	 quadrantGridWith: Color gray;
		 	 scale: resource oneMeter * 1.5 ]