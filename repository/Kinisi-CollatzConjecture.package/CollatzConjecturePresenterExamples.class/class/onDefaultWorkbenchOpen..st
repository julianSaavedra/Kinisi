examples
onDefaultWorkbenchOpen: presenterClass

	| workbench |
	workbench := CollatzConjectureScenarioWorkbench default.
	(presenterClass on: workbench) openWithSpec.
	workbench inspect