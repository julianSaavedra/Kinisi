test - gravity
testParticleBeingAttractedByEarthModelledAsParticle

	| lab lastUniverseState lastPosition experimentResultStates attractedParticle earth |
	attractedParticle := workbench modelWorkbench newParticle.
	attractedParticle
		particleName: 'AttractedParticle';
		mass: resource oneKilogram;
		position: (resource meterVectorWith: {0. 491. 0.}).
	self assert: attractedParticle velocity isZero.
	earth := workbench modelWorkbench newParticle.
	earth
		particleName: 'Earth';
		mass: (resource oneKilogram * 5.972e24);
		position: (resource meterVectorWith: {0. -6371e3. 0.}).
	workbench steppingWorkbench
		stepBy: resource oneSecond
		over: resource oneSecond * 10.
	
	workbench modelWorkbench addGravitationalFieldCausedBy: earth.
	lab := KinisiLab using: workbench.
	
	lab runExperiment.
	
	experimentResultStates := lab lastResult withTimeAndStateCollect: [:step :state | state ].
	lastUniverseState := experimentResultStates last.
	lastPosition := (lastUniverseState particles detect: [:particle | particle particleName = attractedParticle particleName ]) position.
	self assert: lastPosition x isZero.
	self assert: lastPosition y amount < 0.1.
	self assert: lastPosition z isZero	