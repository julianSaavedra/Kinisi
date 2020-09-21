examples
exampleCollatzConjecture

	| lab workbench |
	workbench := LabWorkbench
		using: CollatzConjectureScenarioWorkbench default
		with: CollatzConjectureSteppingWorkbench new.
	lab := KinisiLab using: workbench.
	(KinisiLabPresenter on: lab) openWithSpec.
	lab inspect