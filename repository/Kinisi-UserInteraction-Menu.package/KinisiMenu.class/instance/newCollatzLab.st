options
newCollatzLab

	| workbench lab |
	workbench := LabWorkbench
		using: CollatzConjectureScenarioWorkbench default
		with: CollatzConjectureSteppingWorkbench new.
	lab := KinisiLab using: workbench.
	(KinisiLabPresenter on: lab) openWithSpec.