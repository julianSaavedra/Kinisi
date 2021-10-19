tests
testBaseUnitMeterIsEqualToMeterCreatedByNewProvider

	| newProvider |
	newProvider := UnitProvider new.

	self assert: unitProvider meter equals: newProvider meter