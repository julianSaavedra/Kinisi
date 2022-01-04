private
drawOn: canvas

	| renderer |
	renderer := CollatzConjectureStateRenderer basedOn: workbench scenario.
	renderer drawIn: canvas basedOn: workbench scenario state