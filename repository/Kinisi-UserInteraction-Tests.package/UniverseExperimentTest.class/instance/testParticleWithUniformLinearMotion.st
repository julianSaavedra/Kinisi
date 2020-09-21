tests
testParticleWithUniformLinearMotion

	| lab domainModelWorkbench workbench particle |
	domainModelWorkbench := UniverseScenarioWorkbench default.
	workbench := LabWorkbench using: domainModelWorkbench with: ParticlesSteppingWorkbench default.
	particle := workbench modelWorkbench newParticle.
	self populateWithInitialStateProperties: particle.
	workbench steppingWorkbench
		stepBy: resource oneSecond
		over: resource oneSecond * 10.
	lab := KinisiLab using: workbench.
	
	lab runExperiment.
	
	self assert: self expectedSteps hasAll: lab lastResult