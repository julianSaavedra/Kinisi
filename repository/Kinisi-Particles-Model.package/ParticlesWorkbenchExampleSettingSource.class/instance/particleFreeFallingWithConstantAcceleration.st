sourcing
particleFreeFallingWithConstantAcceleration

	| scenarioSetting |
	scenarioSetting := ParticleModelScenarioSetting particleFreeFallingWithConstantAcceleration.
	^self
		standardSmallParticlesExampleWith: scenarioSetting
		and: [:workbench | 
	 		workbench
		 	 quadrantGridWith: Color gray;
		 	 scale: resource oneMeter * 25 ]