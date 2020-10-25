private
deltaUnits

	| unitProvider |
	unitProvider := UnitProvider soleInstance.
	^Array
		with: unitProvider second
		with: unitProvider minute
		with: unitProvider hour
		with: unitProvider day