as yet unclassified
visitAsCollatzConjectureDomain: domain

	| unitProvider deltaUnits helpers |
	helpers := {  ConditionEndingModeHelper new }.
	^SteppingWorkbenchSpecification and: helpers