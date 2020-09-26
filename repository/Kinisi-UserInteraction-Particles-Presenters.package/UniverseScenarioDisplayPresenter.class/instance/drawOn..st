accessing model
drawOn: canvas

	| renderer |
	renderer := UniverseRenderer basedOn: workbench scenario. 
	renderer drawIn: canvas basedOn: workbench scenario state