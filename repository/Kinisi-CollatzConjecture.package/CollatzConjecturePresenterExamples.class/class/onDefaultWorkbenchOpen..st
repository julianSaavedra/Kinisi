examples
onDefaultWorkbenchOpen: presenterClass

	| workbench |
	workbench := CollatzConjectureUserWorkbench default.
	(presenterClass on: workbench) openWithSpec.
	workbench inspect