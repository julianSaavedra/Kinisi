test
testParticleWithUniformLinearMotion

	| lab particle |
	particle := workbench modelWorkbench newParticle.
	self populateWithInitialStateProperties: particle.
	workbench steppingWorkbench
		stepBy: resource oneSecond
		over: resource oneSecond * 10.
	lab := KinisiLab using: workbench.
	
	lab runExperiment.
	
	self assert: self expectedSteps hasAll: lab lastResult