private
drawOn: canvas

	| renderer |
	renderer := CollatzConjectureStateRenderer basedOn: workbench displaySettings. 
	renderer draw: workbench initialState on: canvas 