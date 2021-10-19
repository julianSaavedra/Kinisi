tests
testCompoundUnitNewtonIsEqualToNewtonCreatedByNewProvider

	| newProvider |
	newProvider := UnitProvider new.

	self assert: unitProvider newton equals: newProvider newton