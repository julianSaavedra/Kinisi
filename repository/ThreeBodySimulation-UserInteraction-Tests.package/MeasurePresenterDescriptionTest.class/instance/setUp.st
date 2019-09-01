tests
setUp

	| unitProvider |
	super setUp.
	unitProvider := UnitProvider soleInstance.
	label := 'Distance'.
	meter := unitProvider meter.
	oneMeter := meter with: 1.
	changeBlock := [:newUnit | ].
	options := Array with: unitProvider milimeter with: unitProvider meter with: unitProvider kilometer