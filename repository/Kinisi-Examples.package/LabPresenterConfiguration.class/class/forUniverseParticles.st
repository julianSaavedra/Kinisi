instance creation
forUniverseParticles

	| workbench lab |
	workbench := LabWorkbench
		using: UniverseScenarioWorkbench default
		with: ParticlesSteppingWorkbench new.
	lab := KinisiLab using: workbench.
	^self
		title: 'Lab - Particles'
		extent: 1500@830
		with: UniverseParticlesPresenterSpecification default
		on: lab