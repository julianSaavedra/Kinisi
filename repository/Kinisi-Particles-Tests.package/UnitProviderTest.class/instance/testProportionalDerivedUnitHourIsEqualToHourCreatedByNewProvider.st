tests
testProportionalDerivedUnitHourIsEqualToHourCreatedByNewProvider

	| newProvider |
	newProvider := UnitProvider new.

	self assert: unitProvider hour equals: newProvider hour