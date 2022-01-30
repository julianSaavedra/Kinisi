sourcing
projectileGoingUpAndDown

	| scenarioSetting |
	scenarioSetting := ParticleModelScenarioSetting projectileGoingUpAndDown.
	^self
		standardSmallParticlesExampleWith: scenarioSetting
		and: [:workbench | 
	 		workbench
		 	 quadrantGridWith: Color gray;
		 	 scale: resource oneMeter * 5 ]