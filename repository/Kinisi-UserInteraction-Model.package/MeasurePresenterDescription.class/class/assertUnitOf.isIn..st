asserting
assertUnitOf: measure isIn: unitOptions
 
	(unitOptions includes: measure unit)
		ifFalse: [ UserInterfaceError signal: 'Model measure unit not included in Unit options.' ]