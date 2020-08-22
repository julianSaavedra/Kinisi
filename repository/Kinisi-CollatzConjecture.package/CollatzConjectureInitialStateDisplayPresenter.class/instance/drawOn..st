private
drawOn: canvas

	| renderer |
	renderer := CollatzConjectureStateRenderer basedOn: workbench scenario. 
	renderer draw: workbench scenario state on: canvas 