tests
setUp

	super setUp.
	unitProvider := UnitProvider soleInstance.
	newton := unitProvider newton.
	meter := unitProvider meter.
	oneNewton := newton with: 1.
	oneMeter := meter with: 1