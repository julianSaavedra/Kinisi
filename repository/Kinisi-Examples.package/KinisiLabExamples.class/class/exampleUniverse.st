examples
exampleUniverse

	| lab workbench |
	workbench := LabWorkbench
		using: UniverseScenarioWorkbench default
		with: ParticlesSteppingWorkbench new.
	lab := KinisiLab using: workbench.
	(KinisiLabPresenter on: lab) openWithSpec.
	lab inspect