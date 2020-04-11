examples
onDefaultWorkbenchOpen: presenterClass

	| workbench |

	workbench := CollatzConjectureUserWorbench default.
	workbench inspect.
	(presenterClass on: workbench) openWithSpec