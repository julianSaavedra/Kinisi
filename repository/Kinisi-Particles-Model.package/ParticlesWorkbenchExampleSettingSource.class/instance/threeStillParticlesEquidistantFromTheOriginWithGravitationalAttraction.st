sourcing
threeStillParticlesEquidistantFromTheOriginWithGravitationalAttraction

	| scenarioSetting |
	scenarioSetting := ParticleModelScenarioSetting threeStillParticlesEquidistantFromTheOriginWithGravitationalAttraction.
	^self
		standardSmallParticlesExampleWith: scenarioSetting
		and: [:workbench | 
	 		workbench
		 	 quadrantGridWith: Color gray;
		 	 scale: resource oneMeter / 1000 * 0.05 ]