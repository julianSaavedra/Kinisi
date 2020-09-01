options
newCollatzLab

	| workbench lab |
	workbench := LabWorkbench using: CollatzConjectureScenarioWorkbench default.
	lab := KinisiLab using: workbench.
	(KinisiLabPresenter on: lab) openWithSpec.