examples
exampleCollatzConjecture

	| lab |
	lab := KinisiLab using: CollatzConjectureScenarioWorkbench default.
	(KinisiLabPresenter on: lab) openWithSpec.
	lab inspect